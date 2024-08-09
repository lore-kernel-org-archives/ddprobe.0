Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED663BBE2
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723222554; cv=none; b=W8429ATtAXsrRF399FjZ71WIFVHdaoGr/yEywFbrQYImIO4K9PF3YVWR6hbydlg+G7xOEaSXPHSo9Rqkoks6IQSiD47HS5v8D3bv/KqU6wSQaL0vC5lmey1JpEidQB2TN13yM5pMRqQlBbpd2WT0IyQTorr7Aj+vNnvPIUlYAe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723222554; c=relaxed/simple;
	bh=zwUksosOmn+2EmTfbXWXXMTgm+tQpn5XbZDostvyHog=;
	h=To:Subject:From:Message-Id:Date; b=T0AMXc+7tX8AbBrDEHyAGLPVaXAMQ9c5U8mW+Yj7lUFjvcC7fqG2r5xXOJpyJvHU/gq3pAxdVQN5Miq4IDtxEUovuUw5xcbn+pSHb1iOwqVpf6xE+0o2KlVfJ4z9FVApG32GxOhvXc+quSZ7Kwm57wKjdNLCtSDj/YqFub5uCqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBn1qLiN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBn1qLiN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3608C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723222553;
	bh=zwUksosOmn+2EmTfbXWXXMTgm+tQpn5XbZDostvyHog=;
	h=To:Subject:From:Date:From;
	b=ZBn1qLiNyKrpl0ICwG0v4Pa8Khx3RaW5WPkep+v8yFE3yOdyorMX1kkIpe/qSHNQb
	 Y64sugjtlmcpoxS0iN1WKPpEIbVPCdBBMIq2pi1AizFNCKqYeYuUB2ioyqTe3TDP6d
	 B4Bgq/rV3rDtZvt4Cu2BQNQOo3I16m8I+lC9GmTdM34yOm48uOkX4amaEkMiEdUAQO
	 sacEbS8mGxhvoQ5ORe9f7EWvmh+KFpielZ1buMNPTVMqofNWvIuWnmSbpN6xN1n4Ex
	 bflLSb5le/sPGKmbQ3H0QqKt8HpptkFvnYzAV1ByNgEt+JU/Y4II9H9Qfa2FK8mgDc
	 /vkU57V0IRoPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B0EC52D7C
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172322255360.10831.14545072136482545319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf1c0271e4b9379b1f41f833e66097c62f9628886287972b195814e997c53ee
Date: Fri, 09 Aug 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723222553
