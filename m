Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276F43502A7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771770894; cv=none; b=XKdFuN4eapE9HbKj3tP/qQIspVtvKvCr0qxhGxWB1F4zU96u5fWdS2Rajfy1o1P66W7+xaUij/vbCcbDGt4kw+KN5Muf3Piwchf2Uk3EpAw07lESL5RKITe5VABfaarHttSYbDck7Evfl4mQW5tK7E11SiPiaPneiElry6tDC88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771770894; c=relaxed/simple;
	bh=hajMHpvQ/Rtj4DnVo/3NKkHUHrccWlfD0k3//UEcJj8=;
	h=To:Subject:From:Message-Id:Date; b=S6DEjxobHbQYAUY2tZs0aYbEJ5G2ZNdA7BZz6jUbgB8bIg3T4H8xLTS6dm8+sEzD+i+QSp/74m3wQFMNSPQ/ylOGjfSreOHJzsEOW2xwHpoDqbzUzXi28lGIOHKvUMIPj67R3g/41cZpMvLEM5UbVUfayHZ/IQaLD317XZ3zvDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qdwb6EBe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qdwb6EBe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19EEC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771770893;
	bh=hajMHpvQ/Rtj4DnVo/3NKkHUHrccWlfD0k3//UEcJj8=;
	h=To:Subject:From:Date:From;
	b=Qdwb6EBeVHpFoOI3cQGDgrC9K2xsCRHrOc6qTJ4xnxFb9E4HTfeE08826ymAwlpiS
	 f/LIDmVzz3BRTiKh7WkDkD/OFB3sMFdRvKUGvvRdF+TBdq5m5LhO0gFVQN8mHYsNAL
	 kM7zAnL2Wi6vrQSS9IeiG/3YOCVVHLWiKjHncPutfYzYq/XBue/6z7Stv6Vs04hrMd
	 mM1fGHqE6suxzOkjyxLvH7vHBTqW3xtDGDCfGMY9hW6eAvWuD2OyQLFDbK7g0c23zw
	 zTjAQ/HXkfaSETcnadN0awCNzid8P7taJgMAp+5M88VPcGlzwVBpxRjVXppaXR1q89
	 wKxI2uL04Fyag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90952C636B2
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177177089358.9116.14090997457459981412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e139387c652bf500d747f7c3b3c3196f007d91440948455e4287b5860577eeb1
Date: Sun, 22 Feb 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771770893
