Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA9C5382
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710385697; cv=none; b=Ac+4lfoE/TlM7jaV0p31BKAt0R9Gqtwg/0Kp+UEcijCUzbQ7qQSpfaXQaRU3/sIwUrzEDCcGWRDFiYTleTF3iXgxWc7RXuX72GMwAXUEWoGFiJ6idtm4K5pz7byc2dOW3JM3Vn9/JI29enzcx3HlhFXbWz2oPRvJKjQBsHP90DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710385697; c=relaxed/simple;
	bh=4Gw6yeYnQTvzsLwBRBCVkmELNMVJzT7Hfjn7ki+6vj8=;
	h=To:Subject:From:Message-Id:Date; b=EKazWbaxZzOZ/WdDJ6/CpiEPiz1Jo6w9RKqmtjCdShJiOYG8tbkV0ZG7KCCr0rjcvBtEn7MGFifvITuiMYXwKhDWh7Di7TMFd2axkf1wu5wpuaqM848ShbBmIEdpOQRd4JJ3ZOFVJ8ZDyqMAvK7Mm4QUOzfqY0VXt0V33hfkkD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSjGLXsr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSjGLXsr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B2A7C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710385696;
	bh=4Gw6yeYnQTvzsLwBRBCVkmELNMVJzT7Hfjn7ki+6vj8=;
	h=To:Subject:From:Date:From;
	b=OSjGLXsr95sD/I+WyvffsPCTErxVQe6SG/Ek3OeY1SCOYkd982SCIqZA63Vfy3xZv
	 fqtJJF3ZwY6TbQAmr81lRmBSHA7GcUR8HSjldLlowtMNDP04jQNB+oD/VPIzyCYEn2
	 DiBL7Y7XuX0EfvyBNaNmUkuUNSIh85SSBAMSfjvqPpUux2sw6XsfFsHa0fnO6XVgWl
	 cadI3TDkiH9pERdAl8Lrw6+ghFyiTsFcnPGO6wdPj3cDWgzf1ytXFfBVpNDkKYCW5z
	 iL+a2ZzBOFbYVUF/rucNghO64cYgSTDx2Xri58SFjNa6Lq9/v6hsmxIQp0kzP/8rUu
	 akNcv9+9Yt8BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79B49C54E66
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171038569646.20943.3691701436694390497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84db95600252f7a35036fe65c67af5d5a5c78de0342b2642145dd58d0f206d05
Date: Thu, 14 Mar 2024 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710385696
