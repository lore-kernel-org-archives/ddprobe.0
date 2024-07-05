Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EDA2BD18
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 03:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720151723; cv=none; b=mjPFfH7SWyCq93Ya5J1TxxbpTFMpaIUeR+Kb0KaUhsDVlNBv+iqEGkLohU5SGyIPOXc1TJ+uih8d892o3N01rGT+6OwjlgwIJ3Z50MABYFOBCw4vO4MOhxM2b1wdbS8NMtnRKxnGaqmf7gy0cDtj9qW/GSmlEkRB2N114u/rvz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720151723; c=relaxed/simple;
	bh=bS2Uqv/BIhposVXqnP2aW1Rzob1BdDE7iHnyTFf0i3w=;
	h=To:Subject:From:Message-Id:Date; b=u7GDuz6MIFTy+JuEzz+mf+70VSl3vAm4yWM7D0FEWk6OaERPaTHZgdhWEPi4kVhDWoHs4MG4nMd+vnpCIzw5m4pXvVr1OwP0ubxpzBsLZXPatODFptA9BPXcnfkW1P7fJ8Vc2eNk2VU+A3IQ5H0XZFYS7pMwmzc4K/rsa0mJRv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L20B2LlT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L20B2LlT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AE9C4AF07
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 03:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720151722;
	bh=bS2Uqv/BIhposVXqnP2aW1Rzob1BdDE7iHnyTFf0i3w=;
	h=To:Subject:From:Date:From;
	b=L20B2LlT4NaHEJSDSNfxEZEa+JSlE4ECGT1dP8vmDQ0V3L00yuJFs/f5sjc2Qp/y+
	 17k/TCp67sbBT63eMP6XR3vPS1EeXjS6H6TZKrDAUNE0dhM52efpuV5/VH2kQ/5oLC
	 do+ZjRjxox3nHs3jmgUKxO/KEpBvlPR6MjOAkw8uj78WOuMWFQugrdqLDS4bik2Dy0
	 2YFh9cBB2bobhpX5KdkwIRKhMOkmC8st5JRa4Es8u9lOGnPhWU5SR7GUdLu2gPLtZE
	 ln2Hz+U3K9uULMOHWoyz31nZa4r4mtIjT8zazz7F9f1mG5ncfeZxXThJPtkDvnVGTy
	 1BJlUT0C3gPhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD881C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 03:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172015172275.4956.3236313714117000246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4777944c095073340abff4370b1ea2316c2541961591432256658c84b43c70c
Date: Fri, 05 Jul 2024 03:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720151722
