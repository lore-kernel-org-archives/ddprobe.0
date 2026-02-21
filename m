Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280532AD22
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771685694; cv=none; b=Jw1d5E8tXsEqBukLIVngqha9JxoML4B3GYHekfFQb3fRkC4C1zEjI3depMc0JLdHdfQIh+DLQJlaaK8S/3V15HTlbhaXp5A9Icxa+wARIh1lPvfIh6F/RY6QYx7yAWt6UopYVI/68lCNUUJz80SffbDRsLIPtRCDWBfBQnrbSqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771685694; c=relaxed/simple;
	bh=UL8Qn/iLUFG2lblNEI7dhyEKES6KYCgdm716+MKDlwQ=;
	h=To:Subject:From:Message-Id:Date; b=hXWK7mcF+RNe23gWGlVcFBG77xFFEpgbftQqMCxNtyAtKKLRohyiKquw3ETQ+QU5JLFJ+DpYw7cqNttEPbsiAMLedMbJJ7VQ1uTFAGTWertCiswzkciXbP1/fWFdYJiG1XuIX5+hNvs32NDz0aZoEmF5gQAgwvLkOyqvcJT73so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUgIy+GR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUgIy+GR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B63C1C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771685693;
	bh=UL8Qn/iLUFG2lblNEI7dhyEKES6KYCgdm716+MKDlwQ=;
	h=To:Subject:From:Date:From;
	b=tUgIy+GRm80snKqLPSfghGYghPX2xxgTboFH1BO9UY/Ds+OL5GkK9CtO7X/qQrJLx
	 gUIQtGAtJghoXVHQ0PeYmxv3Lv4yH6+z4BQN8Gy7U73WnAstmUsk/hYtMCNjqOQPB9
	 sMNpDUYv5rwPW33VQgp61SVFsup9edkqqX3wo9QBdyU/70S/gtwC192j9Dg2GogU6C
	 FZf38gkUcqFz9lkQF2Za9DLrbx2RfHUpdfkE+TM5zwEIZ+UPVHkU5TEgzqh2xhKzqN
	 KBW1AT4MER/jOoqynAS9tjUdb4R41hBx2hf2NDGF5vKd7J/Lwg26roNgwhhiEMXWzG
	 aNBIeAz1uIzOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E67EC5AD7B
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177168569362.16218.18008547193821067226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee880cebc1920fb8831c94d994e57328609cef665b5ab2cd102b923e24679ba3
Date: Sat, 21 Feb 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771685693
