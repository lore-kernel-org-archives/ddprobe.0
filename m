Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE7D2231C
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 16:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717518983; cv=none; b=QQdbl9kgep3d7IlTsgnOSLR8Qcoy/bttVil2Vn6groKVZbP3Y/8ZveiTTRnZ+Wa6emegcUi1vIKHpa3VJB+K8eexgWBqlwfsRxepMjG109vty5OMgUxJLBoyE42VkKVpT+e29kWkBRrAXkG+qp8siEieZN6bd0w6GTqNnz8OFm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717518983; c=relaxed/simple;
	bh=FsuOHnAWGLAXHnPeOjxP/B1sidZuE+gJeJHlRHVRF7Y=;
	h=To:Subject:From:Message-Id:Date; b=OuGzH6jOhcWbsNJnRIBLTlPGwyDDI3O/hTzbLopJQmpusL7boomV++B7BprE8BSLQKxQc46grS/UR7Gwo2qK5pD62VH73r1w1LMC0NiXn08sonYPqHleInW3MHcn7R1EdfNA+UueZFMY2BD3LJhMiLYRZx4kbXUtxeQ7dHg/j0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKyU3vjB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKyU3vjB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78B3C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 16:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717518982;
	bh=FsuOHnAWGLAXHnPeOjxP/B1sidZuE+gJeJHlRHVRF7Y=;
	h=To:Subject:From:Date:From;
	b=fKyU3vjBqk1HTPt1WqJR4EZkF3Dgrnp0aKXWhNWDicKWr10PUhVt5vN3ZKhXXtT53
	 /9Wv34nDwa41NvmVpTQXGqkAKgsYDOhy4i7I2u1GfMow0Ya2QUtOQCG8enFfye2eMB
	 HIs2Xe99Hy8xGbv3pN4vqfFfs8LHSZxL3y2BZtYfOxCkF05/uelA/CqxQPEH4u03JZ
	 fULRb6yjDt6SU2dV9afOJt/CP4tZqAf4xEkkS95WfyTFQNZjUQjCvn9AvkhJJlsPie
	 obzwgCNFAyiGFHDElWunO3XpTubln2MK2ANQOEnOxS5iuhVuaOh4unm12lOF+MEc2r
	 elsV1punWkxQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D73C27C52
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 16:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171751898278.9967.13542520694201304488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9c0a360203d737b2571913bd03fb976a766df715e9057a9f0897055c24e3150
Date: Tue, 04 Jun 2024 16:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717518982
