Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3224730F954
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766082234; cv=none; b=asfnKRJX96UEoLUUb5dVoqH8rdv1YeJTuQCJFe7XbIj4Ow3qB0pNP43AH5voQ1iprh9d7RIH7U4mlOXgmabSO9ayxD2NHzuFK2+xNmMp6qVzgmuWyKNQW9mNTv9re+FW42WaXifZWrQkg1OXNOsAQDR9wup2e6QYFPk4+qD6RB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766082234; c=relaxed/simple;
	bh=Lw06WTdC+jOvDk9M3aKFVpLnpdA1QMcdKC5ueew7xcg=;
	h=To:Subject:From:Message-Id:Date; b=FC4ppKOqWnPd1F/aBs9i5w6LjZGMSxZoxNIHOlYC/z7pl8otQ/cGLMxL+t1WFMwAcfQWT+ldJrIxHoa9YcOjZAz5ooEGKOcyJ9UUhc9KDPNVSBjDy7ZXhQtMr5wgv8Lh02JxO4CiHQr7Ug2VpPqp42q5DIZtUdpomGGS58jygf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vR0CPkke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vR0CPkke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB754C113D0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766082233;
	bh=Lw06WTdC+jOvDk9M3aKFVpLnpdA1QMcdKC5ueew7xcg=;
	h=To:Subject:From:Date:From;
	b=vR0CPkkeKh7HIeFK65JH2pBo3gjtaEM6pQFLqn7ebgv9CseKWYE0dUteFT4B9H+qK
	 t2B6v/u8U5yTvjm2h3NN6GnI7JB7fQ0m/7yOyauiH0zTExU+5gVp2iXCd3t8kIYR4K
	 L/L95G0UyB1XV5Pl9Bzz4q5BMy/jMHsplu3yuOSPLAvaHgV6gySXPxuUCR8xJ+eN6C
	 h3SDnZbbvwtqpIYXXul0+7rElyhnp1v0VGlM2ThRAElV946O36zpVz2+0xFfMx7Uok
	 wHhC6IhYVdrP13vZdvgsfumx84lPYe4wbMI8yNuUJNgmroEQqSW/N1w9MFnXyAVZSC
	 8itFEzdmnct8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DD5D6E2CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176608223360.29949.14037508429052699703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f723fdd5bc7b505025ce9c9329078a973300cea1ad19203ab021ca522c646821
Date: Thu, 18 Dec 2025 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766082233
