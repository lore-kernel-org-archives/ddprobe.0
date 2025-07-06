Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C521E3769
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751811594; cv=none; b=CXWGy4KsyOTRKSxBBfuK+j+FbhZcnPMTL/QV+DGMXKfREmfdWkxIvcnZ7kjxTlN68qp+XxKXmAwH4twhOobDO+5yZLC5x9tcLEmavoxNBQR4xm7nBwR8MR6kl7zSh/DqoCd0MsuHBQvulRlk3JJTWL8M0fZQTHmlkjJuWj/YLAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751811594; c=relaxed/simple;
	bh=JePaRob5PAILLifA+JMmTb1a/mi/TlGF+OkESvgwMPY=;
	h=To:Subject:From:Message-Id:Date; b=Tg17YO1/2NDIasjSGpdFPV4HyBsxqoki6TD5yOD6r/3ue4wM2xzTRpD5yOuAY19BG55AeKPqYf/aDjh/tPvr4gMsghzBjTwqGMvxd1Vxqzf4egVQXFNA/LnlUKkip/C2POEtMRKqhApzVpAU0NmSRFNRk4hf4QwtzfT/vS+lgqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNwB44/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNwB44/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0269C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751811593;
	bh=JePaRob5PAILLifA+JMmTb1a/mi/TlGF+OkESvgwMPY=;
	h=To:Subject:From:Date:From;
	b=QNwB44/bLvkQedpm8GHmeGhILkBcacl/l7+6Tn0f4rhZi6UBk4P+KLioyEKZp0sMz
	 QljO0HyiA0R4UMgkCdstnE2StAnVciBXJZoq69hj1kirXb02168cE/Qvf0Vp8Ae7Sd
	 JjWfAdpV9xVuwI8/CbHDe9ffX3jqZXB8afY14Mrkkf29Ey99zhe8M+9lIDTXb97OiW
	 1DbiwnYEvOLoilIAHfE4vyeFneXHG71VQfGVIM5fv+vHIdqeuKLJqSqRTr0JLXMi6Y
	 /ojgCLnirGCxCCZ2dKdEpCdKDn7iW5XeBmqDjC00ew/TI7ZVf5kpjxUj4YQWm4ChUZ
	 lXj+tHE1ilfnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E431C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175181159357.26201.13353639130122166837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d511456948dfdaac6f30113ac3f94de698995e7b197542a34df6640727348b2b
Date: Sun, 06 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751811593
