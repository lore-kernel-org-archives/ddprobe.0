Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E0E17E
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 05:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645336284;
	h=To:Subject:From:Message-Id:Date;
	bh=z3YT2AniaGDr7w1VNZOG9ELMSOCEmQ08TrprrFsKag4=;
	b=beEXGPFKAgqk3+29o/OED8T52ya4iZxp7oAQq9cSKNBTXgRN3w5cQJtw8lhiYpEM
	eanxyO93qbtwxxDIjjFFilRRY3c2i7AAREeYeJZQkoCiDSSXfi+V5gTO84Y7iDKqXP3
	WDrIVeHnT4Rokv2UhfkMXlgqLfRAIo9vX/VJj/nU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645336284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z3YT2AniaGDr7w1VNZOG9ELMSOCEmQ08TrprrFsKag4=;
	b=h0HqCAOTOLtx1SnArP+q7EqBIDPunx0VYitQYIoi4ggJaeD7kv2mEy8bcL3vVIX/
	j7grGJtDfL1KkNcQFo/6zezQri3l141ajBneLJWr1dBVKt96NB6aNZdH1pjdpH3ez+6
	tI4c2GAatUFMlEuhgEt6WUr0CIoeAADx2J099H3M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f15af4e63-7811edc7-f0dd-4832-8b2a-e7fc0063a151-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f179a60b455d2d7204e667188af8a0d9bbf3bd97f6e145f7a0898a5fcc9ed393
Date: Sun, 20 Feb 2022 05:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645336284
