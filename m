Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504E835966
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785820834; cv=none; b=CFvSVDn+BGYlRg1AtsGnYlpdxkxYg0ObcMW5qrR5mGnuJfxbNWjfFWlb1KQ+DDxBfkM4ma2rliBM0owCSDXkB20TU+2xkvMnEaFZODbYxwBS9ST0YNr/Sz3tuBjqeKKMPgbV1C2nYMiE0Kmu5L46BEdMKoxXeL833b34Uv9cUCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785820834; c=relaxed/simple;
	bh=c+tPEcofRqBnt+2uDV+Ia+GPJtRQCvNzuUa+Vv+TpNM=;
	h=To:Subject:From:Message-Id:Date; b=O3VAHqe78DfbF+BOr4l6BWdA2CvLlqwOHwHzy7FIbVz1W/WnVYp5PL6lyIEzhYNzk4BYzdlSg6onBo/QhMObtL30a6NLPI9sTYIKkKf3N4vpc/PVIk6i6s1xUHEHGBrJEZqzkaBTO/o6hKzVgPQ66/4LJgQP+voB2+kiKJ7z2Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuS1FmH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuS1FmH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE2BC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785820833;
	bh=c+tPEcofRqBnt+2uDV+Ia+GPJtRQCvNzuUa+Vv+TpNM=;
	h=To:Subject:From:Date:From;
	b=UuS1FmH/swXTBatMlwiucwefn1aHkJ+/p6fG4hndqSYCyLCvvcyPJ7MRxVEE+1Uhb
	 QMgJe2/FdzGEbLmG08BGA51tWqz02OyT4QuqATgofvo5OTcJ40rfiNoCIFHe9X6k4E
	 ghjns0Yhx4LYMsQvy9kHLbCiIGTJQ6c+qrvlzVTvXauizkWnQoePvKgF0ElcuarrS9
	 lJiRLlClfSETRqnRK1weRi59zLqQNSrz0QIg4bkVrxtnsx0Kgr3X/RBNzyOPxAq0Ca
	 uEzWklOSoC5W49POJp/+3CT9DneoODk21d/y2xv8atnzJVha2+sEQViBXxESpAt3mq
	 kPiOwv2R3y4Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFF1C55172
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178582083369.19880.18150468867725058606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db6858a8526c27fca0e87066000e4ff0cff7d313c7e91b9e7d3c33182f59c2e
Date: Tue, 04 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785820833
