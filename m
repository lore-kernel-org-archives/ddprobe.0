Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9B08475
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 21:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718833763; cv=none; b=DjDUV88auO6kRWUyxWxnKoy9PIbUCcUwNsvVZvE27DT2oFR7Zu9meEqYNUt3QPE0I+ew9S4Bq0iH/NL3uwOE71iFUeQYzoEYCEQOpumw82ccg+kYft67XCYZaPnKmK4hR7x7+dtART9giURAkNFKN1bClmdMTFmDQygka+g/V3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718833763; c=relaxed/simple;
	bh=k7kLoEgCvqkYUb4B1/EoK/B5OuPv1JJGUJj5x5pQA+0=;
	h=To:Subject:From:Message-Id:Date; b=Ftcj2EDRwzJiY2SXXa1hCZ9qWxl23POnEnUDNdy3wlR1DmEhtQbr8+5u1+uYlkvp2gUy/kQAELwmMAlfU6y6CvhXPZzidHSn3K4gPEPWZl+cLvfoLhfZqnZjA4JqLDaegLpwQPybNO01NOr5LmPgAFyMR7gEuUYc4Yhzw4CeIG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUo34GM9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUo34GM9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5CEDC4AF07
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 21:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718833762;
	bh=k7kLoEgCvqkYUb4B1/EoK/B5OuPv1JJGUJj5x5pQA+0=;
	h=To:Subject:From:Date:From;
	b=pUo34GM97ucOGGoCM1Mc7R56t68epfxYpNepu8dEyLi/A0FNoByCU4Acmk6uLXOlc
	 kvH6QL54c2AduTCl5fmQ+uJzjjiGJ9RQk16EUrg5x9EkS+uEbmTMr04Zp0X+B2+ySK
	 M9fKQnAVo5ozUoXmJL0JCNPiAX5eL+J3TDqfml5OlYWgXn53AI9fDhwcXGzSX/Ml9D
	 w8UeqKK12UTdNc/lDDRXkOQXVSvOtVFFrNioMcA9O5u8dy/hDe10+DhHOgl4DefxDx
	 eIqrhX/+WcOQDnqWPiZaybekA2XXVf416fbnW8rmHuxO5Eu1ndBYlPk+GB4ShBlYx1
	 eJffoiknol9yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCCC1C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 21:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171883376281.654.13675620566806219263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 066e132c0e6a5abd674ef0f0695f7cb6da4661d4a6e3b91e8a0e19533827d34c
Date: Wed, 19 Jun 2024 21:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718833762
