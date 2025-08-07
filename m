Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255191993B7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754576994; cv=none; b=hoVLCnGiCbQYv8+UiiCcnVyIPng0QG/TEYYuByVCl8yXMEydTtXAY4ZoUrzv4y/Q8UzoCrroBzQQ4CkZqPu1WM8w9oU477BYsnP5xXGUJMTeGJuBtko3tZ1nkxFCmB2a3s7fLY7U18FItPvRya8Py9eql8Tz0/ogerfWbLuViUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754576994; c=relaxed/simple;
	bh=8lxJLgKm24hD9drQIlur4r5tkQ1CQk+eTXZLlD5zRJ4=;
	h=To:Subject:From:Message-Id:Date; b=OtOAkhPH0cuj4sCuNK9fjS3bCOOTEktGPCW2AQePJoD3pwNXXTrEGLWYGrduIxfTCfimOjEEw2K329V8BYhED+RXaLtCW1jC8qJLWgW6JEXVP2vEx8tn3I9L1hNyWYwlvfTfa9ms7TfDvUfbKNxm5bNl4KiN1yyUAuEthdIQZTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8mnBrJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8mnBrJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8D1C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754576993;
	bh=8lxJLgKm24hD9drQIlur4r5tkQ1CQk+eTXZLlD5zRJ4=;
	h=To:Subject:From:Date:From;
	b=G8mnBrJrRUThBTnoHwmkzS3zaW8E0Jq7g5fzOS/5Y8pnRBLANU8eJLpLA31uRdxEO
	 q1AhYMckaRrjyi1Sj8aJs7ESRR9iucwXYfx/EcTBw+NGtdZrdbpWEfJyfGGz0JX8G3
	 KxSO2slJ8Bo8u89Vry4jmmrkO9nyVXUuzDw/IJKgSzidKsy07Vml1uZ2hqteEn23vk
	 Ffo6N5GWjuGZcKSb9xQG46b4nV4ZN6r6VBrbRVREbSX2vmyEAKSpyRsa0Bsw4l2Wkg
	 lSImWNoc5xfQ3H1vjJIrxJmXxic97V5AV1MCsjMTGtTFVCmaCOIgtQpjSHFvSgaj65
	 PULq9iPW064sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD37C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175457699358.26038.8672689525276647624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b057e16f9bc551a2a4d4ec7cc09620130a1b9c13ee30fea11cbb883a183819df
Date: Thu, 07 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754576993
