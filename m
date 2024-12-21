Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B932AE77
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734748554; cv=none; b=gLiEkDGCuIfMqsZ+a8ZMDxGOTJTH7hY+YcviMr03Zu068uG7HzO/BGBGCEBO5pc6eMrvpn1QKA6bRrJVSpGs6tXWU4Fv6/+viNRLPu/x+PY65Ggabs6n45u1gQxoZjuZsQ1E7jXIL4fJmk0J+MneHKI/ImyCAsQ+aduRWkqLrFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734748554; c=relaxed/simple;
	bh=V3SC5t6Q6y51gAx9L8eujp2v0co+C5SPURAYPEMbA8M=;
	h=To:Subject:From:Message-Id:Date; b=aYulYFUmciDUqLNbaHOpi/n+eQAbVPKTT3EYVHHoz26ROeflCwX78T8w58+DkLuFTIYql2e80SB+ZS4qVx+fnhVYNKrWzRmSdtyy7JDZAa/W0t9ph96D/TrgILGqyEkn+n9P2lk2fAR90sybKjlco66EFpU4pPiQxPSR+hAsSYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DiEQPjYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DiEQPjYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA37C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734748553;
	bh=V3SC5t6Q6y51gAx9L8eujp2v0co+C5SPURAYPEMbA8M=;
	h=To:Subject:From:Date:From;
	b=DiEQPjYQU9cdNRu5ZUtDy1gPiVEtGM5GPFg2w6IlX21JPpsjF+/ULpElYL3b3Zvb7
	 78zeae4o7QyOKAw5pNk6tGE8hsh2WUEJ0PLL0BsBDwqQBhNg5ACjVG6cdUHL3rQKEj
	 lybBX2qSRrtOoKKPdMK+M++OtEHeYE/lvW5QtXu6ybR+7PK0zUwlJeU35ku9RFUyQs
	 nKmZIA1U9bDylWIcrgEzWU6qVfPzknnFZ+0+S/LR9tAZnxRIhaNOpkrlD1eBkeok36
	 QiBcRB1Mzqxmd+Ib+HDqzWuKTHxum4HtJmNQTKMkAKcb/90VKBZ/kSgUdVOfJpMRa3
	 Lm9zC/oTZbuUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A9CE77188
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173474855358.9238.10427929726255569452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a9b3414bdc25764160d22ddd26f87bf00ba94a3475925128c07553f9ce9b4fb
Date: Sat, 21 Dec 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734748553
