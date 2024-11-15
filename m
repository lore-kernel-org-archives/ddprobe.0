Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B8A17DFFD
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731653754; cv=none; b=cKtIAtcEL60kNCGO6vr0e2xbr1Jn5i9TD6h+/yCYeZ0NTOO+MLk9UP2DgqdllU6HxlIiRZG1FByLY+kj3wUZpLjuyy78Wssj4jncmlFc8tasM1c5jsgft8Ji4r9dbZLTSNaL4gYumWkcYZxVAmNgwHFp/XAOPBygFSdhn/1yb88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731653754; c=relaxed/simple;
	bh=ALVLXl2mMDzG+cyB+r0WnM4rDScSB+C1Nj80FDzqnqM=;
	h=To:Subject:From:Message-Id:Date; b=TgMThv7Lv8Ih80H3kF26dXS/Hg2DHBWyPqt3yI/KsBy3lQ6I/Zv6QXYM+IeIKEYZhlNYLVl2dv57zNkk3MMr7dWQLjq5p0edkC2u/0FCDWC0OetLoksS4KEMkpOyA1eh8ukmbin2O+0RJD6NbI3xfhxGpjX8bagLM1Ai834ERRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLRBqfYX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLRBqfYX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC84C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731653753;
	bh=ALVLXl2mMDzG+cyB+r0WnM4rDScSB+C1Nj80FDzqnqM=;
	h=To:Subject:From:Date:From;
	b=oLRBqfYXO/t4yCK9EBy8CzKTEdHuuWrMG4nMy0oWa09plfPzKXU8BX4OPX3VfBFoS
	 VHuk4EDqZ3xiCgDNdLAptiS5Y5mNJDwhiMbKfoOpsJjE0NiVVI53Ugzvtqe9s5uc41
	 Gsul9xq4gt5SFsDLKcx4cmZ5rWYfVHZqdakfEqpamF5djjPp6bgufHn8xVYPJ1S8LL
	 MueceOccMBOQliKDfBiHROze8R2dj3zJyRf1wdp7guNV0ADBLjTJ1lIYLKm2IQNrnF
	 91nDnWcNbfBQVLaObvDn8ARDpooR3LZ9DSgnDsEKaUqozeU1tHP0vPqyERSBexHVX8
	 hVFovnunnx11Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FEC5D6DDD8
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173165375364.1403.7585096514079311149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b34fd996875707910571e7a23d8df106fc3534a5f8d0f095d46f031dc8fa165e
Date: Fri, 15 Nov 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731653753
