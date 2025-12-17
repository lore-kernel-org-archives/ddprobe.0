Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2562D26ED3D
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765960434; cv=none; b=HimawklafhFheA3ZMyAtVK+f8HMwwXSPfyLgOeVKkFtyxDgyPUAmjwlJwfUUAxSu6hS7Ss+L2j1H9gMb9FxE2qcdCOxeH/1VmpglujrsXoY0SmgAQiAkwK2eY/xCiMVh0wBBRUO4rrnLmsXBMVxDRZvdFQFJ1sR3awRpXYa2Pfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765960434; c=relaxed/simple;
	bh=w1obbfJizRH7qDnsHRX/wQNUPSFiE+U4j8B9rc9uGig=;
	h=To:Subject:From:Message-Id:Date; b=EKX/w7PaHZZ7uzTe/wMlIL/NG+nUj2Dt2YWF/1W2/MVw4EYVj/D5rNPPLwt/9ehElGD55/fDXwt+CzEHnkdKIeSZtPc1g6eEfd4zA8N692c/PPDcCgh5kcmWJqd5IkGpCARlvunv1PWbTCCvVJOS9J4LHifeKETYVlX2X4TKz28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+61PPww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+61PPww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDDDC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765960433;
	bh=w1obbfJizRH7qDnsHRX/wQNUPSFiE+U4j8B9rc9uGig=;
	h=To:Subject:From:Date:From;
	b=o+61PPww4Zmi62xb/Xe2YpeS5gw1P2ihxQ5zJkFaxH+3ielCSFpI90SMdfC7d57Im
	 gbut91orw8O8k2TYCyuhb0Dld0QEBPjoQN6U64H80Q0/yq6WRI5frDye7Sm+xVW5lT
	 ZYJEVRR+SBDAVxwGi2jkIwI4ssZcyaKCsuXRyREOHkjHc2caft2jlekGhBoi7Pc3C5
	 DvY98P/r6Z73vtz81b00HLNRUX8gD8SPR2dg6N1hx0s3XaT+Io7XIrOQjw2TgQ5tiA
	 w7luEEDca0Z5Yxkc8xyM6S007Oy0Efv8PX15xKnpt8iE0CvyeHJqbPYbJ8QOIQ5Oq5
	 f7Nnsq5smK/rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9716BD6408D
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176596043359.24161.3402768787198927089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577286d91acecf8e1282fc45c49a587e189ac53bd5601e468490dd6eb2f416d2
Date: Wed, 17 Dec 2025 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765960433
