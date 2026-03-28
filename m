Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120F37262F
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774734894; cv=none; b=fbn74ORhwro6WjSc01edGPyFPSspHZNsWAnpsfpiS8WmB46lTsN1M5Yrd7D8J9HXlGM8Sex414JukSaInq6iA3TMZRe021Rr0lC2DloHhe6miCp8IaLEeuGrqZocMZHDEc7Zxn1hklAhQZnqq8sXjCzQ19Nf7mS8W25kfcnvmQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774734894; c=relaxed/simple;
	bh=LW/QA+zT+CNnvoHIlAfRsnVV/5cUeAbVFusdFD02uSM=;
	h=To:Subject:From:Message-Id:Date; b=HU3OzQ+HkIq/q16CptWaQ3S7u96ww+vIlyU+iLLoPcBsy9fsHbSaqAWx8Xcu3D9+bbEpsO4lzxiK/HbDVHLm332YB64+HcONYzwpmYG2YYzhfrx9IEx/rUrN1LE6DaKHqrTsjwGwek3e1LMtRavV0IHfWiEXPNKnT1QyDBkxAAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vql4IAhX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vql4IAhX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA549C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774734893;
	bh=LW/QA+zT+CNnvoHIlAfRsnVV/5cUeAbVFusdFD02uSM=;
	h=To:Subject:From:Date:From;
	b=Vql4IAhXTAtlPkAloTyZjdRaRt6HRKsG9pgwrvj0pX5kplez+DzPaSkWWt5NE+TkS
	 /vysv07vASzUAQqBC4rn5y+MhA+pFRU3Wd9L0guAFtZLlMKbcuNhNs588u/etKVRIb
	 qUoWjeaZE9v+FuAj5z3roL9pXjoOn0zjXIU+JYAhZxSId1kk6wJJ2dLfS4yxWGy2hq
	 Rx1uYPTAimyZDU8YxbrOqUuwD+fea4psE2fztKpzhwxyktO2XaYo2D5Lz8M+XxavRX
	 8gX8IBPq7b8jnuvjfAxiAxlNW6+jB6wMxb+2ePlmoR9Gqh2qY3mlYITmMFTkJPetDr
	 PdOycSMC9gCug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9423910D1487
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177473489358.15274.3618602080076155672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e3d81bf840ab7ca37101da6fb6a6307a40b5f46511d5be7593a0e73a56e0ca
Date: Sat, 28 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774734893
