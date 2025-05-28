Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FCD8F6B
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748464794; cv=none; b=r8cN6+i/ni++SNVMu0uUP2X7stypczPm2iWkPKovvkh+BcZLJV1gJ6eaJgQhVB5UsF+7HpX2sw6HUAc658cTfMK4XTNaQgGSG+SUGXVF1ulkWPmNAFj5ASq+BP2XQyy/p5zvSXhOsu73VcLS4wrbCcO8rdEtL8Bq2sCCDT4N4aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748464794; c=relaxed/simple;
	bh=3eDM5Q+eT/M37SijxRUJ9biMoSejI4Sh/aSxGA2/a+k=;
	h=To:Subject:From:Message-Id:Date; b=nQyb9tmJlHe7L7rzAVr7lgjcABYvaYUxuyjS50YxFSOcxRxY9rjxPo/onLMgNaqCusbZURtq47/X+0mQg4gFbaAdJlvUNV62YoVjJD5YHWs9VMjC1EJk6J9XCxeJL4+k7PESINv1H2TBjYw9gLjbl1S3VdxOLixWrKKrYS6F1og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+wf6MBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+wf6MBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF34C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748464793;
	bh=3eDM5Q+eT/M37SijxRUJ9biMoSejI4Sh/aSxGA2/a+k=;
	h=To:Subject:From:Date:From;
	b=L+wf6MBnVSXQdFifSYjrgHZgT4z0qrlgZCYyEBVNe2LzVx8uNhBiJhaMGzd53xeqZ
	 yxDGI6a47sHt5LzDiOaPV3QZd5C8gJGlfB0BwZ2wFcKtC87fx/9Hq+EcSo/MNu+yi1
	 T70CG5X/SZNn/LmO/99avD4HADJEJLkJVfAvtT0lHiYVUaMRKP2ucuPH0mB5QigV7V
	 +tkfUSz996UarHiOms7C70hpsSDlA8ySBKdNFT4HnO8MRu0gMb3bZ5B9I1woKOL0In
	 CcQnKsDWJyEiIO5OVNZxN2I39A3Yfn1olV9JG9/6M6gpMS2J+TTOseV9NeVGEryJmZ
	 SP/7zsR/gKfTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7D5C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174846479357.29105.6858438703796027835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 298f267b072793c37b1379f84a8e12ab0202cfb1d5bbff238a44347da7cb1740
Date: Wed, 28 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748464793
