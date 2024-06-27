Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E05518040
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 17:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719507863; cv=none; b=i4IofTqA1Nzjaz2hgrUMiC7NqkOhOBLrlpcIaUyHKfNjGepf3AqDDnv/nijgi6HLj/Q9Se66/2XuCpMO3/ZKtJGrn1Udd32KF3AX6Wwx6V+C1CPJC6zAttq8MS8UdUWCFPHIQZbw8P00HSrQAAD0vwd4EkGWWetFyS/YzuohTtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719507863; c=relaxed/simple;
	bh=K6GtrMB5LNtAar5Sp0aVW1d7gpW/dGilXR3BXa5bj+o=;
	h=To:Subject:From:Message-Id:Date; b=FpTYgc2Goul3MPICwJI8VF74EWcAhiegcoYjHuBI5QYGdKq63jkuiKEjSxlGCqBd2o+DV5ZAa30RzKrtZl65/4pH/0S6sWzsviN+9TAeUUeY3ykXnxvi30Ss1BfEqagxekO1KJNalbVomfAFNjEhl4G7yn91I7wCTVtg2zwxhq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSqgzaYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSqgzaYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B02C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 17:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719507862;
	bh=K6GtrMB5LNtAar5Sp0aVW1d7gpW/dGilXR3BXa5bj+o=;
	h=To:Subject:From:Date:From;
	b=tSqgzaYxUPbWPlbQ0LmU/JywsoJCM8gEzvx1WkMdBU7EMUqUIf1iwuBp49LZ8esa2
	 2Q2m1s0oWLSoM+0q/3+K32pYzJLFSHBlkIg6w0pxQ4oSe1KO8COCuEVj9miFpuHJFi
	 GqE5ubdd10lKN5d7w/BYI/5LeeACqDRdlW+oxm3AyD7Zp311kj+n5VC0F5sIdcNl/Z
	 z8hkJg5hQr4eCvGwnlwZqwecyEC5oUKDmAcIohmku8ixuq7smF5oSsU6McBGknkhst
	 bHAf2loSO3yvNDhM35OFrpq8MRhI6o4U1/Gx6Wan3Sc/nDOBKPGdXn1LzQWSknBoUq
	 q/Bd3jkuWwYvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15E7C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 17:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171950786277.20418.4788499190013742427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afcc4f1d2e972874602fc6a8b57872c96028059e36f7fb08209ea9ca6f496dbd
Date: Thu, 27 Jun 2024 17:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719507862
