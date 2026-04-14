Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1BD30F52B
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776191254; cv=none; b=tILLPE6WVLFPtv931lxX2Zp1U9JgyD9c4fIq/Tx8lrJlelT0uNuh1hHsuvAf5d0GDM9d/ApKh5wYsoemwMzWsF7OU1sV2RIHS3mYSPxMgTxhGo4rSkAHndk6lWv+6rR2dhChchDvoQV+LUdH+Gy8sivQG8Il1ORkngyg6M2eyWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776191254; c=relaxed/simple;
	bh=MhDef3VSDieqvAmS4TDsP++nWtVtlGh0coH3UJgshK0=;
	h=To:Subject:From:Message-Id:Date; b=ujo/Vb4Brpntrv6RA2NK+PGfYtXaqnYfk+MxRR8hO0QTX2w/4qv1yQKru9Bb05s3T4p9URUZymM6hPHdpZdn3bCNuJCckbZVkHU70ef0tUTZJafLM1NKxTJNwt3s2Xs2BmUg3Y+h7OBwJ40NdHauGks+drlc6C8jKM7JsZVSZso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJd0/q4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJd0/q4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBEA4C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776191253;
	bh=MhDef3VSDieqvAmS4TDsP++nWtVtlGh0coH3UJgshK0=;
	h=To:Subject:From:Date:From;
	b=cJd0/q4TJwi+Jfg1iaDfLn5wx3KSkicKOSsFEkyc9VErjJGHHRqbsP7xDZ9VYNEyU
	 p92/4ICCYYw1RtclJN8vtpHN9cVeZ8DN+Sio7sHIOnH5f3irdhzlbyLUO3UICT7hj4
	 oF3jmuE1b7dtYR3aGSGRHfNafoanAi1pXfcH26hgzLNQSOCLirpwMwcablsuduah7I
	 1Vyj2CsegodpqIQwL8pZFWwx7uv+iOuzs34cOL2B+ANamFb2LTirFNZMWljihlQK8T
	 wvoC1Am62ApFC5aRdtgziBk39temc343VXu4sOQwnhZG8v9B1M9iNIFT2tVkIQXLH8
	 MjGpDWyeNzVVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA125F9D0EC
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177619125368.15872.8444531298155892122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cdae39bdce35d8723023859c026b9bf85d0a33fe72f724cb64678810a993097
Date: Tue, 14 Apr 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776191253
