Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08152DF71
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755096594; cv=none; b=AFGGgxLfB/vZ1P2hmMionItg4YJlHdjhxBmPw6bLHIekX0At7XjkkI8prjZ/6cbh4UkqAcQTeIrJkq9Niaaa2IpImt+8O+9RmgAX1DRwHL2gSlv27is85bFqkowzuZEr8rRZfjDS+WJr4gHHrQvbOX1eqjY89HJ5h97+kNNedCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755096594; c=relaxed/simple;
	bh=Z2p5Qv7NBAd+REL7yVvi8GQXA1pq6M58fhdf5k2MR40=;
	h=To:Subject:From:Message-Id:Date; b=ICXN/jOrtX8dVNdpigB8gA3dA2OT1Mpmoj42a5cwQsQzjFIe57dxNRveGNuzCzRU6RZL1Icwq0uNmDdWjXjHqLgB7u/8WJrdzqitP0LnRME4MtTj08HJYOKIS6c46Z5MNmsLHcqzQKNhogVbknpOUgffJ3Ty+BANNSLUHrGDAIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOk57QiM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOk57QiM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0216C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755096593;
	bh=Z2p5Qv7NBAd+REL7yVvi8GQXA1pq6M58fhdf5k2MR40=;
	h=To:Subject:From:Date:From;
	b=pOk57QiMBnfpLjCGOc29Zq4/KJ8kat/9HtQ+xfEK8Ld+3MDYlygj0mPzYsMNqggAh
	 U7mJTGIx34+dgzcv9nJ9uMd9jEbc6j4L5E0NCpAchV6NdwtQZGb2RA7ThXbZ0DUdaD
	 iYBHQDbtIoRGwF9kbj+WyX8x0JxX26pnR9MvvXvpEXenkWgmLXf9BGzs6wPJ0ZLSGU
	 QaDDVPom23riL8Kx6ait7bLOvbDuhldM4imH9jbuZEFU7+0TYKM3ZgiV1T/+jjE2su
	 iuSMCTegbmpSlRnYIGAsmwvAJ2XPIlQvTfbNiQWaLymBbmNtabdYWn0qQtQdjQnvUE
	 hr1OLLjYnfJPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEA8C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175509659357.19802.18312244678499434384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d47ff47adb55403b09ffe85387809dd87be51ead4f5807bbbe061a24f6acc8
Date: Wed, 13 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755096593
