Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3329C17E0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757226594; cv=none; b=OwkL7+piLFc2kb9ljLrzcZPJTybV4czfM0QUeqG4O0VGs1kWFNDrCimZQYdKT2wTcAjgYL6/3ETcY4c6tpLoLB1gm0NgXm9A+Y5Yo6YDNGopE9IkGvDVgqb23teydW9dyjavflYXpiHnu+1H7UnLgXJ7Zd5b3gTRO67cMDWsgLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757226594; c=relaxed/simple;
	bh=bPBICuZgGn0xBnvulJ+I2GijdQjnMBwB/QXAY3yKZYk=;
	h=To:Subject:From:Message-Id:Date; b=S5+faT61GaGFCMRFDMw0229EN+yCyB7mbjfHztkAyc/W6MP3n7y86UquiHSUHYi+12CWREq5PYFWSKb2rD4DYH0JNfGebAEd0KRdH4XRWdfizFh17eCG2vRX3+8C8isabug62p/CZc5MVMTLJ3pEwP3zHhv6DUd/IxexPQ9PvSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hR08vhOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hR08vhOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5B5C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757226593;
	bh=bPBICuZgGn0xBnvulJ+I2GijdQjnMBwB/QXAY3yKZYk=;
	h=To:Subject:From:Date:From;
	b=hR08vhOV0mIoUDyqnoEhwdMWIkXFJWQ7Jsp8sTKqbNrRskWWBAzqB6K9vBGysWMAf
	 xbs88DxsOuE+fjYsxICG4fvz4/nHh7aomQgRRlXlhwv7qX2rwzqLrq4ruBc+OhcEU+
	 4jiRjiE3zzaxHL+Ogl/7fM9UV97Mvhce5myXJ06WGG2rWH/IN4Wqv8q2+q3LWCpBLY
	 oI3UviZ3R5mXAFqveJJfwz7+zit/xa5TverEgIT7ACO4ljWYH5p65hYN2zXbrIXS4B
	 pmBEMFf7oc0kkUGlPy9GKjVojS3ts0woE7tLrp8+8mCGiYBQ7AU3QXyPw7YMSkyfYE
	 7YgqxH2wF+MPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED4ECA1013
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175722659357.4400.10433588629638072256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a51fa8c18c5048034944a6afdf34ad4d5519c1b3b90856a9832b26269341dbe0
Date: Sun, 07 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757226593
