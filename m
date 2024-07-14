Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C89F2BD18
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 11:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720954823; cv=none; b=hGqocH6IU2FuVsIFH/8NVy4x95D9PEi91FUNIzV+65pqx/b8+fR0JihkWY4+taDKcGPGlZQuCxWhWvEfL4S/94bCHPv1ETIh0meV2nNs3zf6S0lXFdrVyiMphi4Jgz3Et/yEAVuTekMPREp/+PemUaxyVZ0ztakYl3A5dxBI7sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720954823; c=relaxed/simple;
	bh=WLBnrW4hMo/C94EeXfPtY+9cQzg9R5oghDcWNKiBQFA=;
	h=To:Subject:From:Message-Id:Date; b=MIlZFqnvwHlkaNcmEsJgopJAC168DCvCAO5meZL3ULaLpV/x49YrJ/Og5jhVA8aR13ZHdMzfpe6qxHzV7lGEWLyI/S+yooHvZW0obKbrjsZqmFhNqiad7NslQwQPtfj4r3ttuok2SrSKtN7b+a+2w7S72juuvFt9WzWN3q2aGTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7pR8b9F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7pR8b9F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D361FC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 11:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720954822;
	bh=WLBnrW4hMo/C94EeXfPtY+9cQzg9R5oghDcWNKiBQFA=;
	h=To:Subject:From:Date:From;
	b=r7pR8b9FWcYxi8jpOMW9j/X37u7pb2kfCAsnxfGRF4JNaieEn8zQu6oa/M+HSS8wl
	 GDX2/O1Hg9/a385ZPE1Mif9HVR7jTE4nEOOpxq/YbwpS8uu1tICRqbtoIrc6cXntZ1
	 4gkTL4X9sd+JE2ByyRNMayqoW4n1h2dsTHShaMndeELJAZDecF8a/Y1+DNMrRwsTO4
	 v6NLcI29TwG/Q9GuK9N3ccz9fMe0soZUt2Ks4TeAc0feavTWn0LGIv1Hpi4hV0EpZ5
	 iZvuwQKd53E2wGVD5jebdfD4Ml6grp5+NKcxE0rOALJsS/uidXSOYlBjJEmnCZ/g5W
	 rfEUrDYNNZXlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C048BC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 11:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172095482277.1808.6445887287071918642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc6a73cabaee9af97ca2d2abd64deb2158ac98a68a904348b66041d2680815fb
Date: Sun, 14 Jul 2024 11:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720954822
