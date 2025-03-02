Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4FB1E32C3
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 06:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740898734; cv=none; b=bU1t1psslmHMKaDHf+FhcBey1QXruE9FULCLbfkQ7oKUEirGT7JUwvNTsPGSWgRuN1XblcnMa2gTxzzt9Kei2iybpWuUUqbqSdsIsyLo7uDoJ8OeFE7FpP+Bh4PYLeXDdbULJS1lesEjFZsunDAcJUuSht1A2N49L/bmV8He4Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740898734; c=relaxed/simple;
	bh=pjApJwWXJtsksJbwyoddFfvAMgfcUbbRMKoHo7MAHRk=;
	h=To:Subject:From:Message-Id:Date; b=SHKvzbmlUupSQsLF70vzruuYoMYftsG3CXBjom7r7PeNDT/UqpVzcHTPffN9OzRAGtGZHsplKbnTrC1RxacoeVd87YczKlV3k2VEVhkVVCPyMz+uALa9U09EwYklInLYja29Ge5uPJYLgvuCh0xXSa6ci2SJtuv9/nmZaIz2dG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cK7aVh9s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cK7aVh9s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBF1C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 06:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740898733;
	bh=pjApJwWXJtsksJbwyoddFfvAMgfcUbbRMKoHo7MAHRk=;
	h=To:Subject:From:Date:From;
	b=cK7aVh9s9NqrfGjimEwAHFu6bgTbOB9zFXrtRbIyHXx8+HPNTcWlD/8n82m1STla5
	 6ucOy28Y0jhkS5Xhq96VFZ4213RZwdP6cDFqmwi3UtlDSmgFEaL568HKuebmWavmkA
	 xDOSgd3EIwe752fOJkphzqhHDO2v1yyIVYK4X5DmT+RpuYICT8naEUZE+84xgJ5o2z
	 OTWsPxcfE1TBNUbV1JQzgmxAHljp2o8ErLcYjHVfmSsxNSTmBd6QH35z/eHZS86YDv
	 RkNsyzM5Hnn1D8cPCvnQrFf7jfNmvG2Fg0OxkWN/N0hK+z96ts0mDcEEwU2XoripxB
	 QL9UQVPzemgnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A52DC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 06:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174089873360.6853.6952959521110664632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 926833fa2aa8d5bd706e18cf7247683a0d98f24d7a6fc03b4e7f4ea2645a0a20
Date: Sun, 02 Mar 2025 06:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740898733
