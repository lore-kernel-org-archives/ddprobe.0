Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E203002A0
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776019654; cv=none; b=YLL62iRVzjswentnN9b/LwGKduhCX9oNlAki8oxtyoOgFg6UvIj69re+d2caCpr7+Zqqo3bu3Gm01uvqFxs4lZcXZV2qVhYzNzf6MZg8yQWsFcVAUwbN5gC6MzgvoUD3MG6HLrRLZ0tFXDEGsQ94IdthqTViH97RvtFOCo6d5pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776019654; c=relaxed/simple;
	bh=9LN9S6OyE4MiXb36i4kbfdHpZRtfKoG+L5rn+xcATrc=;
	h=To:Subject:From:Message-Id:Date; b=VOfOG5Mq0WGQ8r3Y0TsHQoqTaponB27ERg37eFNeYwzQKMqp5UePR24OqvwMS/+Au5bn4QUVFD3N4vkT0iZ7Bm8XaX5225CKtXA2R0xx4zqkb4f6ICRDka9G0LxaVP54Yr5oWiYUXEtJmOM0xK1bcwmInznro1nIgpbG0HH1xMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5qdamZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5qdamZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B97BCC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776019653;
	bh=9LN9S6OyE4MiXb36i4kbfdHpZRtfKoG+L5rn+xcATrc=;
	h=To:Subject:From:Date:From;
	b=R5qdamZSvgK7Z2BSVUC4YdLRVXsBAEmy15p4ipuTyP0WkANaYNHXP2wVKJq717iAa
	 IJY+EWPB54g9ypB6HYjeK9qykozefadpTS587z2Zfod5wWgpu0UKHb8Q3pYn+QKZVF
	 LjHAjN0sFMiXoGbpbn4Ikszn4bug4RrcB7NFyMPNVbDn76iMNSoiQ6XjR0M1gpyWrQ
	 FFc5kwAk5DLVtFTmB2ICj8a1z6PzOYY/UoZwFNYGSv2nFIxSjsU+6Z6xtnnvDsZt4J
	 8a2nA0cbNhqq1KFpFLNXZ0dJxxkB8VZXiYdQIYWnfqYLge+YhQmQRL7cldzAMsxigf
	 SLJ3V6Yt78Gzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBD7E937F9
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177601965368.22023.2611548768874248496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a2cb68bc55511db498a77472acea106b9e9662a6033d92303178e04a4703a3d
Date: Sun, 12 Apr 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776019653
