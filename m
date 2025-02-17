Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5722B21D5A3
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 14:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739802534; cv=none; b=GvTCtUJCXAAO/m3qJjAaG9xY2t8d3Cn8FaB3EwC1ce/wqPtZuWjFSnPJxF8hNnh6xeB9Kq3bjNXWf7TgiYzJ/uDiKSa2I9DljmNfmfp57SZfGCDmTgyEhAtPDbn8toOplJsjJGJc8iH3Ms0aPvRUGVJ2/No0dKKRVMIuBo5aI4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739802534; c=relaxed/simple;
	bh=AF1yxo+hg/1GzbQ2q38y1fPkPYT5Jt0xGItPjFf+uHM=;
	h=To:Subject:From:Message-Id:Date; b=az7YLxS5Nc+c4gnRnNNuV8Rx8YDTWnZAq/P9N4jPyTUFvlOiXpaERkzsX6JvxObKdzAlxqbMlS3Li82xxOugVa9/y4MPedgtK+ow07yPsUey4j0sACrT7Wlah9eh3bcVYBZv7XyO0jNHt55GwpTycdOPwId7dIqL2WnarenAJNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uS2pmKyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uS2pmKyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DF5C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 14:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739802533;
	bh=AF1yxo+hg/1GzbQ2q38y1fPkPYT5Jt0xGItPjFf+uHM=;
	h=To:Subject:From:Date:From;
	b=uS2pmKyF/SprScETicU7e2nlQYv7xrVTPVpUkQwRvMvE6b/v0fU2uDUrz1p3bsKzZ
	 lqDBX1yI5Yt1aWNyLTFR9QEA9y0cURe/G5tKsKic0dG4LN6RE+Q1PunFfxoiYzplaV
	 IIDI319eYoGzuBtlDwkZ7gXFLNjfMTgaFaK1nshJMdGGeDWhJY3Tt651jxeHBjhRkX
	 lQjgkPIKMbsb0PuXC4u0yzFhhiJ/L4lk/kiv9Qos+lDKEOttSthovQj6bprcMi087w
	 pv4qoa2zumf/AwOFwIZSB87xB/NcS3SmORBzdTkOphDnSLaEnxcCIWwHdWLFU2Su0c
	 w15XevhmZNf1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988F6C021AA
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 14:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173980253361.16516.12302021163158779265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd870ade71b2d746cfea6319323cf752cc778e707a4ac34729d00666d392ffbe
Date: Mon, 17 Feb 2025 14:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739802533
