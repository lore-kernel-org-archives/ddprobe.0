Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3281DE887
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769549634; cv=none; b=Z7BHo8VqSgiO72vdVdme72AO4VX3bQfxv6rEiHIo2tdMgrLrb+BcLozr5SYNAJbx9UhSWI9qE0wg2AClmlGwTjfjGptD6vbK2hHCNZpJKaInLGJm/lrQDChuruc0HaOdhXCnqLRRZeole0e2t3hWukur6NtP0wZlMlws9aPQ0+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769549634; c=relaxed/simple;
	bh=1u/O8gVE1GOoR6TfrD3O2eFNdWthU9uX7tt8J+3RbF8=;
	h=To:Subject:From:Message-Id:Date; b=cQ8LHg4Ot6Jq2UvSjbAy9K+tPZI8JQLmEAZ6e6IwWvlv5Yts/225dY/8yBwZu8Up7KINvblCBuTnG1408QLrLCXMVbIRbOEFo3mWf8CJQFlwiL0ncNLpke/wHY/Zsu9BNrkD6j2XKxRBAtbVeB/HXbBk6gZUbKUC7qTgoFbQGB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+rfPfqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+rfPfqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21CFC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769549633;
	bh=1u/O8gVE1GOoR6TfrD3O2eFNdWthU9uX7tt8J+3RbF8=;
	h=To:Subject:From:Date:From;
	b=A+rfPfqzqXRjPbeqhEKlxEASBjEIlN89hIQpIlkCJ70+peMFAMfPBuzfINcSt/qKx
	 1dowoXGjyuAPkeyzfhhrnwsRHRCjSnX7GO6qe6+2tAEDB/0TkdADCaHXcT5rHXhdWB
	 OYSCtq8IOzlhEAW1LRIxywNB8chkKIdcmh1joLsovcwdfzgddqUEnA2z0iPAryHxTz
	 nTys0tFBN+ybQUJl2ZGIrm8GlSSqT2Qfw5zoOEF0GqdXitanbePYQmMnoaUjgI1nji
	 P/5Fvjw3YGJTzXQUZAMgwlyLYzNkv7XtFssIa078O0B3p5JNkDA21c/9rCRgKS1FTo
	 RfifWQq10RL9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929F4D2FEE3
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176954963359.16032.2721316767366066591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e0af611607a10c7de5ac7d700fde6681fbb21beee19ef8455ce49239ae371a
Date: Tue, 27 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769549633
