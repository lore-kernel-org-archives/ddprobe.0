Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B06413AA53
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747240195; cv=none; b=k9rTChZtSjgtYKX/JnLtfJD/mSbfv+IgICMacA9WW54Lw38ynRaMJqmHsG2R5PnwYJIUE7DqEQVUY2cPRIBDe3ekA7iMPPmol0PekUw25ocVjm5Z6RsdCTQK4nohql2FSSaexnvAaQA1YagQpT+s8blgN0GlOrb9auiKAG4CKDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747240195; c=relaxed/simple;
	bh=hIfKBOD5kqML/sUer2hkM0zW2owDuXSFSi6FvTfuxl8=;
	h=To:Subject:From:Message-Id:Date; b=qmu96KA9cVGiyBKxfxLHuy4gzxZHGRR5UCpY3OP2gHib0AiFNqJo45PxPPsqx24AbdaRKhe2YIzJD0AWLPqQppt7//Oz9QWlWhEwLeV7b5Hfazsm1d8SWpz8K54zsggdxnG8uiMq7PCr4ZPdh4yNqc9CJzThSsJWrVTl6TNw1dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8gFa7BP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8gFa7BP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B095AC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747240193;
	bh=hIfKBOD5kqML/sUer2hkM0zW2owDuXSFSi6FvTfuxl8=;
	h=To:Subject:From:Date:From;
	b=c8gFa7BPkWv5nbwraGZjv2v+fIfazjmmeZ2ntzQa7oauYgZtTrJjwnDdavCNDegxK
	 +vOt1gwRFPl8z+338qzYGRe0c2d0GUQ2R+rFpzXgEHTmLkd69vHQa8m7/Q9gZObVNA
	 bHmbK2A5pCVDDVHJLIKwXD0wSSfYlo6DmaLHha0gkM6O2Do0IJhM2N+gcX+un5a5k5
	 geKfs7qWwFsorW81Y+C6LRTdzWO4iG7cgBAjMCmNsx5n4S6B4b5oqPpJx6bRxqcyNT
	 WNBO0NFjh/5oQ0MRUe6X8nrIc9ODnzzcOoiCzA0nsoU7fifw6KPW8ZZ5ltbnvGN6y4
	 w2vI6tkXulBYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D4CC3ABDD
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174724019364.27446.17300091513333028808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 934a6b64dda965eab9e212adcc9b71120748e02e28fd51ec13a51bb900254309
Date: Wed, 14 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747240193
