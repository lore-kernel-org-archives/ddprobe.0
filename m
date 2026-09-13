Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BEEDF59
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789320034; cv=none; b=oMR8VJdL4D6oEMqpIS7MGZRTLcPtSHZAtIkCF3uAzybUGQgIBaho/6iAxlKLoNZkJZjipGPdohoQGbcIFxGca2e5F4KEiii/TFQZQD/XLt48jKxdSN+Tds7Z8GMXkxvxccLdBuAdr59wzbIjK2zJwr6B5OxUlXaMECorvRyv4fU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789320034; c=relaxed/simple;
	bh=/uwNX/qZhZ/+zqa4ALebshjyg3SrzhQgIWIrpDdo8IQ=;
	h=To:Subject:From:Message-Id:Date; b=D7Mi4gnNlzNa7MzOiuepDIPM6KTwdVJFQ1u11NoGDk1OUOInoueYIFcoIJU8tqnvYuCd61ULOD66+HF3rKkDpZFCMFdoySbmK+IgAWLKoRoUlWDGtHWqKLAhMMbfjlnuzZyjtlhwiUC2xxnFBWFwunu7qEDa8NXm7veoYnM4R7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BeLQBpZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BeLQBpZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2963C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789320033;
	bh=/uwNX/qZhZ/+zqa4ALebshjyg3SrzhQgIWIrpDdo8IQ=;
	h=To:Subject:From:Date:From;
	b=BeLQBpZAFT+3/cWhevQ0as9Aqpp3Py/AqwbUmv8n8XI1DoA1vEPNhmsIv1nWlyQjW
	 5PpRDCG45N/VVtJ+YNgu7EgZ0t24zrXppGchVjYPEPpNZ0+6tpQE6ZKQPeIgglkfCa
	 jr3nj7UlmZY1AUL6UfxPiXqR+OjuuoiKjvoDY+kCnJiXorm5PAj/jMj89GumqjHqkI
	 G+SlIuoKuq8dmP3C2eI1H18zhiSoZA2U19IKPPt+RPvsZqQjAOMvtPTJj6i2LhP3yk
	 6Eqb7nn5yYzBDp9zxkhM+8RYEvQVTDTu0NCMp23Fa7I/hgpGk3E7EFJuDM9HLE6A2c
	 sx1Qa/DM4Sz9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00C6C88E63
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178932003368.8076.1794113618983694710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b7d559bc34083ce8ad00320fba4102291c81a2552306e95b5409488a94a05ef
Date: Sun, 13 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789320033
