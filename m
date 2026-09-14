Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273EA3DDDAA
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789384234; cv=none; b=SitMsvd/kE/hL7/tDK/n7PY4N2MQd3TPl5/cDqv8x1wpzQ3WiXmlUPW9UqJuTI1DRdo7jWFDH4UFPDVEU6jIAx+Nz5uRTDA+Xs+7iAuzSWnKwNF9JzR+g/AcSGzb/MJM7mfgasRL+0wKcARzfL5Q6L80BH8lR6hteY/33KOA8Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789384234; c=relaxed/simple;
	bh=zyuQw2LIJFMBEppfSC5p39bNlU1QOZb7cYBC6Xyi85k=;
	h=To:Subject:From:Message-Id:Date; b=Xdfm2KUACmJT8NGKdXfPc4nn53SlkAEg73YYnENwy522lEiW/1rOJvgDHQJi+2hTX4K9hBQx1J5z0bm7ZGyf+ayeMnWWa/5A60IFDiMgicHxwnNUSu8FJVDonTJ98VuX95s0wDLF1B84mnF1tSbgJRKnW9lVcSO3daxh6BdgR/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9r2QmkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9r2QmkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11F7C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789384233;
	bh=zyuQw2LIJFMBEppfSC5p39bNlU1QOZb7cYBC6Xyi85k=;
	h=To:Subject:From:Date:From;
	b=m9r2QmkMvcAI7X1rWm5yhDBWP69/RM8TomHgnEIh4hCTgwDHYl8p5cmqhxKN2YtJO
	 nGnJaW9j0Vbjl0cYo59fsFxNtnKt/TqZvDA2e9FKSp4F2lwqp1dyJVEKwrc40XABnk
	 IwmGjor2YRkNzvN+8gBSLTHINYfIxUsA3e3bgL/4pV6zQcaZzojBp3XXQz1NRo8wTb
	 B+UGKUwySaZkodlQ0ndax9iT7eBDTqHDb7L63vHdclQc0XAafnzfBkK91tcZ2Vnh2J
	 +2IA+yMd757V0bu41YuhHce+RgokM6a8mJKMXvi8r/g3J6tznNga78CfFU72mePMMk
	 E2rjTq6TBa7Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADDFC88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178938423369.28906.8797481472732650682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f08015f0cf0b697a67273e0eca99b6547997466aa344197e7484bb4576416d7
Date: Mon, 14 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789384233
