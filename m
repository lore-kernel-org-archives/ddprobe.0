Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7F63F7869
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 14:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781534194; cv=none; b=sPVFKxQQtXV6VYDQkqXFx/hOcQyQ5F4c2MNky/WXqLu6MY1djPf8K+/wJDiScwqBEQJNq0/+pw/LvZHwGTeZ0EaiA/YnGsZ9Xkb5EzP4lgSwyuCh8MfcPdC3e7p1h4aTSTB3A6OSAfa/uE2TjHrwTnkXnVcp+Rscr186+3fICA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781534194; c=relaxed/simple;
	bh=PmqxCjWtxcALE2RS9k9ReN/wF/b1SvkYH953o90Jg+c=;
	h=To:Subject:From:Message-Id:Date; b=MK3g+H6EodBjSTGrk3T8FECEB5SBnQ2LDuM/464AirVFyUqgCjxb3y85t2GtyGDNgKC8m6mkk9U7RLm2Lj+FYhPrtUdWU4oX62rB5Ml4uMsNkPtAKulLAVWRcOhg5Svy3KjcrmCK/F6DcEeRCfmVHJmTH6iqbK9cHKfn7Sppf0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIXekKN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIXekKN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BECC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 14:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781534193;
	bh=PmqxCjWtxcALE2RS9k9ReN/wF/b1SvkYH953o90Jg+c=;
	h=To:Subject:From:Date:From;
	b=JIXekKN+0ridiEY6ewUDM9BcVv8UZTokcpdviIa969kFvraRIZzt/cd8GcvIiN8kl
	 t+2UbSelCMQyES9NOXr8e4pBeWQrYRUNC4sN77WB1Cxz8dWndUTxPNPIYFpLFWkMhu
	 KPf1nJPiYBO1pubCHow/tMKN0q9fT0RDzIdXSODr0Ff2kdDUBvPjnNzoVj2Fbr7vBx
	 isPt0fo06xKA8uiAHsOOLGxV6bd45F1Vi01Uk7eoyfd3ekSxCRaPRnJePMqiEfhwQ3
	 fvd/mydpmPhY/fxSY/NtQ2g2RdExyDiySr0nCnGhj+SF37WOEJPLzcI5N/MqbkJQ5K
	 59tlMuYpIis3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2501CD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 14:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178153419371.12989.17534499388330768490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf282b27aa375e64800374a4172d594d8380ae73b45c8ce93de05fb404ea857f
Date: Mon, 15 Jun 2026 14:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781534193
