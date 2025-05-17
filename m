Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF1E175A5
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747481993; cv=none; b=QXDJl5nTvIVwH5bdntnOQFrDhEoR7I493SIvxlx6TrSING3EtJTd0W2ehRMExT5JGbKvKHkKVYIWTfRKlsXTnywbGZHENfDvELjRUVH8MPfnHJNn6A46idVmx9XDxxjPk/6i2aBaMctcX20OpHJ8pXRj00VifqRuoFQbTDYT9hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747481993; c=relaxed/simple;
	bh=k+xTEMTThoXgMCUR5bjLCM4JA7tjV1tlcGJf/mB24e8=;
	h=To:Subject:From:Message-Id:Date; b=nBEbn2z9jSSbv8y1IzoJFAD1YgLhpoHVfMQ9SfPY2ixdAOmpEn2zdvCQ2uc2NxhmPwBBGnytmYvx8P7+AYXT0BDITXzYfiQCa5lLtybh2Z5UCp3L3cbblJsjjOCJqIEkebhiYb04J6GckmgcmrZgrC3QgbL+6nKjzdgx6L6HHok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGSQZRG2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGSQZRG2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50ECC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747481993;
	bh=k+xTEMTThoXgMCUR5bjLCM4JA7tjV1tlcGJf/mB24e8=;
	h=To:Subject:From:Date:From;
	b=QGSQZRG2AANOzOJMvaKnJeBvgJFRSzLH5WuW+N3FjhJbwzQz0K22EtHDN8q+O1exV
	 NGq5oEO1YTKGX1XhAvK2PG9EeOgR7Nph+uW2sSBF5J8j+yzQDn/Cs1AeZ8BvWuvGm/
	 y8a1ya2Ih3RUCg9/dma6uZlgi9sQ93FEocRgawfc5BdpJrOPfAjNzhXJIWZ5ekVeNr
	 x4XovOTtzSIZp04ixrSNRPnle78wf1AwdgJ+B9g2KUyOFSFs1Fn7N5L4ITROck2Dwe
	 akGztoSXiVZNq66kjMxryqLTASBnSEZuQDSl787NKZ/Aq/jnQVINoYbROWbKUXZPnv
	 /65qJLbuqSerw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9140FC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174748199357.19386.1594322259160971783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a97681d9ebf81aed56483e003cb32e5cdf2fa4649179ca89e14bf6858bdcddd
Date: Sat, 17 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747481993
