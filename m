Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2CE49B201
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789142434; cv=none; b=eJyR2O5gDiHCMWWShO3R8WXx54CbtA5JqVNk8I+BSETjuMhWqCAZI8qaPQlMKh0W4O2WiY2fl6sVgG3/kPSN5DMTgMKTPq3iCVeczRX1lfW+Blaubmc/ff49ymReJPZONB/BHaK/R8hafgFXvfbb7tmDGNuS6ON+myXK1xkfi7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789142434; c=relaxed/simple;
	bh=tTv762G84E7n8P1XcSFFIHraNq/LAEh7+mRhn+7ISMA=;
	h=To:Subject:From:Message-Id:Date; b=YMPucE+c5sbU80+ZQmjPmosgEbX5/4q9EgYPspJGUxuvPwq/Jj40KiEMg0l7wHexKAqDu3Xcwdm60eRRu5ySuiWLwysW7Eq4UwZXGjDfovTU3ehj7D9sHwSg0IS05RgEqETAjusIsLNxkCMFPfCZbjM6HQ6xzrW2nvKfKeLduuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqw0iGnb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqw0iGnb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0318C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789142433;
	bh=tTv762G84E7n8P1XcSFFIHraNq/LAEh7+mRhn+7ISMA=;
	h=To:Subject:From:Date:From;
	b=fqw0iGnbXWq2JoFzMy7kfi2Ek5v2DwrfhO8T1gvwmQ1whZbY+77cvov5dJOFwuMvP
	 nn02vzM1EcV9mNn9lBFWqf3xIbN9OwgcOxxotNqgXVlJd+yvcEk7teb7s0MJx+eCM2
	 sFPBwM0gtJ/H2t8fBIKmeEF6LvMbwRB+iU7skcolFlMxAjIvIPM8hIZsKo5rgfClH6
	 FMcXbpXxvjEgiowP6NM16W8XQZ5fNYnSyQgH432vw9VU0elyc2rgFVfsWryTKpvEp7
	 zyMW/PFwRxQWWecxTIeLaZ7m8uB4AinPJWoABkL5B0TWnCFW24Aw1F564CwodCg/KG
	 yH/SXFi5PwRhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4F5C88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178914243369.32602.10312031499324000225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db3ee618946ea510e62bf715e6967672c425cecfcb7dde6b66701570c84bd72f
Date: Fri, 11 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789142433
