Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C600D1F4CBD
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748933393; cv=none; b=Q8qokFJO24SR8OS57BnfLPYRAWbo7GtV2FW/poM6IHNuoO3qGxoFEdbOSPMQs8uXsl3oJgCduWFdaXBcZHIW7ZpnCfyOfYabmvRcP2P4C335XrpyJPlSizD9EjU+7aXwlpgB2hk5KdiHnl7zDDpiuT5muLn84wKA5452Ery294w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748933393; c=relaxed/simple;
	bh=BatTQ+dER//NQahn/yx8qI6FjX7XO5hp7VQkt3DoeQQ=;
	h=To:Subject:From:Message-Id:Date; b=eU0sQgrO1374fQ6Vgku5Plx2cAhjRw8ORukK6tsSPbkWfCPI3KiLYWm9KP3IsKIJ1sJKYbZ6kSprtthT69BartyvyT2ZPTFIm1PeJrMbnhTbVtE6kJCxw/y5Thf4jMm6fmH7RF1E6UMit0X1p6+vpRL9UyGkVGBEVwxfASjx4Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPerI+/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPerI+/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAE3C4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748933393;
	bh=BatTQ+dER//NQahn/yx8qI6FjX7XO5hp7VQkt3DoeQQ=;
	h=To:Subject:From:Date:From;
	b=GPerI+/9e7kj1eyF/KDijJh2RD/d1bDvNwl6ZxrwzfnJQ3dMM04ym5o+BlGEd8mKg
	 ixiDUfpmIVOZQHaLiiBCL3qj1tCLk5X6jvMKaEjX1F7kzMlLtT0fTn9kacxwTK3EY2
	 Ex3HHcfRtRbWPTQtyH2jVgtolKjZqo56fTPylJzTLpxLbeBRUs7kpPP9R99LFauz/y
	 Y32MLIFHx99wurkQ0FW6SEfuWFNum4rc8bT8DvoZx9/+V8r0PQkrMfqjhe2oRCpqmc
	 3IGwdgIOayxG6qBL40vSvSaNMX+v8rImAIh/lcf1483g+HAem1Lv4mZpiXUHl6uH5s
	 kikCOGefcNFPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB62C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174893339357.2882.807415956565896082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33d32f56ee473bd229315f0b64bbf7fa838c7c74d9589e88cf27b8c97e4298b7
Date: Tue, 03 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748933393
