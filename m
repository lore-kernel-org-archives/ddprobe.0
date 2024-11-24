Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39715163
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732406754; cv=none; b=VLvR/OVpON2ODTdufqaYbVbEZ35zA9h9/NXGwWbZdYlkni9GQvi9RnURd/YoXFViBD5VhgaxrdPEmAUVMd+ifvvF6IGe08HfWqm5mcVfcppfzoP2J/nQmF6kJGlECESfzbBddQ4ssnzP6y8VDnoW0BZWsyvvi0q0gnFM1HGg/Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732406754; c=relaxed/simple;
	bh=GbZtJz1+Rpg/CJcq++g1nnuObwLgdJnA3A54aOwrL5o=;
	h=To:Subject:From:Message-Id:Date; b=l9bB7ZkSIF5bYarPYE2a/G1W3YbZU0cPNxdzliiZjMV6ECkO2+OJraG/B2KpDk7aFMrspIreGVI8/fXOG3wu9qfYWUjtzdzGCdMMlsm1LcIRSztcnaOUqkUuJa72yUQh3Nxzab4VxvN1B+TLJ9JYE8avfgyk+snmHL+QDy7MfQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wg9W+oN5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wg9W+oN5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3CADC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732406753;
	bh=GbZtJz1+Rpg/CJcq++g1nnuObwLgdJnA3A54aOwrL5o=;
	h=To:Subject:From:Date:From;
	b=Wg9W+oN5kUqoirN8NMsOk5J4rH+7U415L74YhLRxE9s1BBKVkZ87xMSVboQEMjbDx
	 wE/QwZQpwvCXDZ8nKureKQ6khKRr2ppDg81Mcf58+UM576UvdCF4tJlhWY8TQm5Ts7
	 BT2RYUciQBF9uCpuFtQgpQXm6eHphCANPC5NNk+01qkJI1O5/La+E7Yw4bgYx2rZPf
	 kOfFiIqYV94WQl5Ku6FVuKJ7VvUiaECWIKUQGUGvKto2tPS67zjk0oCuNExYSrmvY6
	 teracnBA12NUAeHCPaHII9NjRJSiYE8Kb4wdGhyGC+RRnHFi8ezTDYXHpTucDazkRg
	 B8XN1sPccgb6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5F1E66893
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173240675361.1130.17778497951301295835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19174782d53d4315b1fdcdc799fec197c1f1dda571550c9265fccef60d395ab2
Date: Sun, 24 Nov 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732406753
