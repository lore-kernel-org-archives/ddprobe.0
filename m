Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E20618A6A5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759612794; cv=none; b=rG/Q+CBSQBJhIG4JZkkJc8BnYfXRAcaidkRKGn4XOJVDoEMjG53Oq8EOydejidBLNg4Gp/YsCs10WaCLKTdKnu5ZPmbXxRCo9mSAC76cllK/hQzZjuU8msIrtc2zEKDu0hO1AEv0v/Bn2vTIQL3eNNF60E4CswzFCxnM7wdTR/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759612794; c=relaxed/simple;
	bh=HXVOrwsfzmiyGTaS4a6gFQH1iOT7U2hSnBy1u+w67A8=;
	h=To:Subject:From:Message-Id:Date; b=Fvvrr5SuuYI5xX5KiIF7KkZ7lEtifO2ZH/5EQwKC0dJnAhQ6WAr7ss9nwBeEfxvcsYbs+eBAKAQjsJJaHrBkCcrEMWMSMPKxwQhUyLR96BPEy/wsNFYwzQ4oGIL+N2ZWx6FhrgWQWe32hYswh2KCdr6ABB5u0/GGiSvNZ/1h4w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMtdcpUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMtdcpUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20BFC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759612793;
	bh=HXVOrwsfzmiyGTaS4a6gFQH1iOT7U2hSnBy1u+w67A8=;
	h=To:Subject:From:Date:From;
	b=jMtdcpUdfZgMYfz06X5X+WSCbXLEH5z6CKHxM5DK6THeAKtV97VCuUztdYDtlio+F
	 eBQVWGW3lckf1JaxEKp4HnglpFZDwzxQn6ZAjKcBxKVnPVaSPeIMFw7gl43KHxiE1H
	 y2PAT/ho91RVQqBtAafgxFVYUEeSnjm72Xiz9w0cb3P23RQ1EEhz/RFISCyDg8jfv1
	 A0th1KKSboYA2ZYQAh6YmM3TRJmLUeqGsTRQJDgZRRH4GySGz1V27eRS26hM18ir+H
	 4ru8AbeIJsi642gmdUcOrTIC0zro2UywLytHfT0fq4YrQj0/O3z4RwWBygs1jIdTdP
	 P5Ec3SsBLF7rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6A7CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175961279358.6076.14353514875845194430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccab192539e56550980793ba520fbf6da0680ac249f50024d84a56566f1a1f14
Date: Sat, 04 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759612793
