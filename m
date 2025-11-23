Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F0F1B81CA
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 04:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763873514; cv=none; b=QsIK+F78v2jsJUy5pPfzM/xrNVdj4DwhpT1qEkzeNxBU34ZkcW6dxZOC+Kwi3E++dkhrj9hQEUldQbAI+J2k4DT+EHTuKKr0JeISVQKgrVEw9VvCfvYXl3y04j1xWoYn0woaMOXsU25iT1Rm+x4hGNvZRBSZkOSXwllLPDhXkUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763873514; c=relaxed/simple;
	bh=I2ZGX065am7b/UHEZ3tU8pdq7qWQMls+CuU6RUpW4PI=;
	h=To:Subject:From:Message-Id:Date; b=gvhQiTxSBMbtroihVWfgWUgLHwBAMIDuL68LtrjM3bRqGZvnGrV5znzfh4E5xS7XnjcVjBBgzpYx0v1vCgY1dO2Gs+1firCFp1gykgGG/r/FLtAQRBXINqlyLM7exb6PH+b7gruiM2580hJSalfYQWq2pYTUFlfcWXAyxG5HZz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gnvb148S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gnvb148S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9618C116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 04:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763873513;
	bh=I2ZGX065am7b/UHEZ3tU8pdq7qWQMls+CuU6RUpW4PI=;
	h=To:Subject:From:Date:From;
	b=Gnvb148Sb7gLYUH9r/TUgNpF9Gjmil0BSS7p0BNT2PQ9zGxzjDdtVVtkuK5sVrPsQ
	 GKDEz3xG1SX6tx3PD6PwFZZk4E2MudxgJ+0sCdb1aHFLSseTo+717c/tHqQ/qqxw99
	 9g+Oi0RtZLZAYD9+T7nD3ECxNY7Q46XOimlzRtmYOkf6tl2pybi0QWILwwUO3rQPxU
	 nOZ66oOkVqBnIkMM8Ud9Ovj0iL/Jzu9b3pwJBZh+mQCgaZmtgV0+DJWzB4zpYO38SQ
	 d+YqW85rzxBp3Kgqj1f5MFlqcfOz6x+t4SiKKoTGRPWQFJCc9/obvy/02aw3T1sW6J
	 V+NAFUtSXLk2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96653CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 04:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176387351358.12120.15526443468372871761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1bbaac4795e71210a89791220da0b3594f76652619cd46a8ce275e361e181fc
Date: Sun, 23 Nov 2025 04:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763873513
