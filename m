Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1875C433AD
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774840494; cv=none; b=Isa3tGhCCxQmWzGWV5MhnJQta3e3GO+dyp6kPMbFguQWpyM3QZkyxhBPqsYVyYl+dX9EfTPiHZYi8y2rbWLJQyiKo8Wn2d6ioiNnA0jDAWShAYUefxYBCBq3kvivWcaXLm52G2v3Cz0uFftfUGJs/F/aqPdESNd4Ya2LnBFbsP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774840494; c=relaxed/simple;
	bh=By20i1GIESTUnD4RKi1eK0KoLJoFoWuxdQWDNKtmLus=;
	h=To:Subject:From:Message-Id:Date; b=hJ8LqNLsCfPo7symIc2SUOmAkXAaXqfszOu9SaIhZ8PcMmuUvFSI/Gc+2zjpe5TuDGmkqCLVRGxnklFPsxo8j+E1Fe+9yQFhwmhm8F8bXq31VMlw0fyDKrZrTABnMlXeJseUmccXtod77/+lKzn7JeREjFqTQBP8ZlgqdC7iDy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHFys2Mq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHFys2Mq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BBFC116C6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774840493;
	bh=By20i1GIESTUnD4RKi1eK0KoLJoFoWuxdQWDNKtmLus=;
	h=To:Subject:From:Date:From;
	b=hHFys2MqybQBMfeKS3m+UYMACCYyDtXWjHrw1ZYmquFAtDY7RNyKpe0CKUTcuHshJ
	 rgd4cA49Fr3kBQ4uBawddz0EYm+LJ4iJglNcProHONBIP2lrPDMR5IAK1GOwn3Zcnb
	 pUM2xolHy5OIuMCnDA/fBxTBez+Gw1ZIuTICwQc3kNoumg5X1ldeYhQu21EwNQVUBs
	 LZMwajQaWsekwJ+HrFsbnGP5HjZ3HEdrltezk/9v8a7LIH7EgvfPRrN5Y8l1e7itGK
	 +MZlWRUJFgFUpKn7ggx5+vY25TSiHI33Wl5LBc/5sQEB/nLSB+o4SjkB5mFD1Unx72
	 jXeTXlpSWJ+2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910E8FF4933
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177484049358.16863.16625117074613225241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb97d41e9e0ac1dd180f71cfb9530ba2b955608e193fc3c1cf17e98d0ea6263
Date: Mon, 30 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774840493
