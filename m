Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329BB21D59F
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752928194; cv=none; b=efk84q7VfT4mHua+MbmtROcS2fIdst4/Uyrdg27da2iaydASQR0w8ptYbQbfScUD/zUniC0GFL1RKSID0/+F9tJlnar/VvIa4uHQKC2UZDH8wRLG5Nzc6aiu3oBt88QTtwQ4SPOgbUnl3NYc+SHKhLmRYMuVq1JaezhWXUxcITM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752928194; c=relaxed/simple;
	bh=SkekYEtM4vu10PY6ZfUu2HawZHpCXxUCn1uzP5ncveE=;
	h=To:Subject:From:Message-Id:Date; b=NMBE2su3w2LToi+G4STOXBKLSgs1l/zQ5JO3QdtZbPwvE5LVWuSIBNka2C6h7xoWrIHHdTwJqZWXNPJZu9KbEJDAjjFjH7Jm67LE8dGnP6ulGPYEQT1K3a4Ldi1yXo+jALrg9n3fsmMZTlfhBjrWBZX0cZtAngM/PBMTxPCd+o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9ssQXJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9ssQXJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F9CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752928193;
	bh=SkekYEtM4vu10PY6ZfUu2HawZHpCXxUCn1uzP5ncveE=;
	h=To:Subject:From:Date:From;
	b=s9ssQXJGADiytjgFHg9GE0ZfQpgv6yDyp2ZtGFQToqiR7s4SjR0RXSIkV8xnd9dAo
	 FQDz0uL9AxHgmYpga7dnaK8VrW3pdmMlO6RG+dWZGPQLdAr9fNApD+MedYPqF/NOdB
	 NIQmpN7AZ12mCEI9px1y8RWFOex8CEGp3lfpJagq/E5y1x0tkIRUunYEjTXc7O80dd
	 paGQAqggPUz2s+grk2PdkLLAAzPYuchNk2JlX/SNR7kQtv99iDkLg7kYCx7grzzd8P
	 puOodAWc79O9+Byh5swtG3DgzbUqm4Sc1isWfygs0/QjnBsbla8Shq4YcKIzBTlJHA
	 v9dLIxiD7J6lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DE7C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175292819358.27188.14410541190605252328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aad24c9aa76efb24bd5d702303d819e964ed96629afc16f4af91c5bb046872e6
Date: Sat, 19 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752928193
