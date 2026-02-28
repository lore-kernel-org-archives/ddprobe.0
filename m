Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A1C2D7D2E
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772254494; cv=none; b=Y7is5C34j1GbhsZqsEuZiK3mQdYh8KprD8I8Z2dyUCh1Afzk17GoG2buXnfKa3029M2rw6hTFK74ZSN+BdQVhSuD8MwY4awJITFopbhRZbT7SkEFrLjaOh+6CAIIimXWIaYfUHqQ3Vp3+rsLUUYSKX6xnDCtrRfvQ4JerZcz4IE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772254494; c=relaxed/simple;
	bh=QAcxRCS5dMKGV3uI6/UZncZPUO7oUCHq8cjHatR0ryg=;
	h=To:Subject:From:Message-Id:Date; b=HMZOSPND0PvZ4sNAeN1+xrRm32r9rz8QHjIC7Mvsfn9l25iqlFcvaSgaUxLN9usCyNlzInfXIRZmvfapU08g3eNbLnKUr7rHe3qvZxBRaruMtWE7YmncWDDLhIKdTR9wV0pQhKCGcqkR6yKevxxlNb6bARPCaH/JzdGkUI1nljA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1SaiOWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1SaiOWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1B6C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772254493;
	bh=QAcxRCS5dMKGV3uI6/UZncZPUO7oUCHq8cjHatR0ryg=;
	h=To:Subject:From:Date:From;
	b=K1SaiOWgvk8hvxfHkvC/UdaS3VOke4MCL7bXDObHEcKVjA/8L4WqzknZdNhfftI9+
	 /E4Ea0omeB6gcoYy5jC2STQ6wIt2AszoBfbxvDdY4aXKqtkT1RcnvgyQAAf0qZ3iSg
	 GOtutdljSu710mzE3Q7E3YKDcDfQnz6yg43IJCGU2sdXrWKkDzWSa0vRq3aVNBusf7
	 LvYkluA6Jd9381e6c79d4B03EwqeRswCjBljzvKe930cl4UrYVrrXNoVqsuEQ59GsO
	 pIv/AlxgV/l66AnzfsstAO/msPwjhkYtbam/VovHgjuZE+Xp7HGGXwSh/lEsqtpoTf
	 oU1W1aYWbi59w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966C8FEE4C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177225449360.5118.12988022863415456346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bd8abb1339fcceb2f202b814b397982defaab933afbac0655be5c85aadbafa4
Date: Sat, 28 Feb 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772254493
