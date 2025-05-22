Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3205527456
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747892394; cv=none; b=a/WwjBe4s2ZZTzPVvdVQFGD7GqnlbGJ5foIUenq71bbRAH1K7ACf9Nb7yTyRZ/dz66mCbWbRwxvLljYm0Gv1UUkQ49GXgbZFya397Vs+wBBB24IGwX3c5kAv3LhKSrKoHvN343DY28Wr53oWgvVgCcQmQyzygZBWpV7Gol8HT8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747892394; c=relaxed/simple;
	bh=4ZUkp9D8c3FwOMZl6VExsvxAycagk+i9AEG9DqYlsN0=;
	h=To:Subject:From:Message-Id:Date; b=M8nW2QAkmrhJZS2XwR2ar5B0Se64S9lMrt68072c7lC9FQTAoG0BAg1lzINh8HZOxbfZ/hgmegye+FErsT3UvFo7CgRCB5lQymyy5m1GWvsB0d/83SnwpTnH7KUYPHd96XmiMUW4vneU4bUb52HcoXIPKFQsq0aI+26rD5rFdQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0LHu4aA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0LHu4aA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE47C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747892393;
	bh=4ZUkp9D8c3FwOMZl6VExsvxAycagk+i9AEG9DqYlsN0=;
	h=To:Subject:From:Date:From;
	b=d0LHu4aAAt/XlQiudJ46jaVd/RJFENgSJdcr3RSMQ7wkOAyz2iiq6F4oZgTh2ysX0
	 rAR4VL3wE6FNutW7Fopl25/+AD7dc5l7Rex1W7mpUKThPj2KMmXsnXPVZ45IjOPKME
	 ub5/9hqnWEkIE2AP6qMucQqR5mGzTePGDqw/MtIdDMIHltUe2ioUBgmAiQ0vz7s3JF
	 ud/ye3nnM/JTsaZ+RLakL2KpgX3lfdUPdNdqd0ebchNTyY+gCTIVEsPx0tG9arYZ8e
	 WdLR9I7rgy9qiRdkAnKhcCKzzBBbOW//KSOQGpjI/5+gLPbcSySbv/PKdVEZEgEmg+
	 w/eL2c7dlV4/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED0EC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174789239357.9752.13483430035645715640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a532b948e1ead4c5e8ff6dd154da54a8d0f992549412667cc9fa16315edaa0f
Date: Thu, 22 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747892393
