Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236AD846F
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 18:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763835714; cv=none; b=LRShg0GnQW9gl9Im3FwVOEMyjhVZb2DIdLJwwmu+6FuptVsw20R8uQ8FkcYb6HQlM7MkspCG9J7ESc0mzy0vdDnazPVAEVVdo1tX1r7pudylXE/tqphgfCJENg5lYi06bZOITiXP9Rw4WAnNJVdJI68ZuhNh+6mqrtSOViW5MSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763835714; c=relaxed/simple;
	bh=+wr1hcpZ81LqCgEqvsKcST1zIGVO4UoRBisMvJyUXZU=;
	h=To:Subject:From:Message-Id:Date; b=Z6XhiOsfyf8vKp3nlQrDeKudI2eiXMruYC6j/uLgeoDb9RIJQkpNucWv4BkPegzTuVG2Fi1wxPNGRl8rRJEwlI1BeLtoTwawNv/82JnWkMqViZof3tgxzBV2FWuq3BbaBovOEP5U3eirnsyBjA+eGFib6calLYvgjYsYxnHwAyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FKR3+G9s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FKR3+G9s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B21C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 18:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763835713;
	bh=+wr1hcpZ81LqCgEqvsKcST1zIGVO4UoRBisMvJyUXZU=;
	h=To:Subject:From:Date:From;
	b=FKR3+G9sFJ3neNphiUVXJTiOWxmAMSUXDiLT3MC9zUdUF4hTgnFJHCf/Z1Ewv9294
	 T3iLgvYklRZdmtzihEtIjid3WgkK/SemxQvrl9SrczU+l7Kk67tspu1aNvIxGYc9CY
	 Eu7Q8poW/0kT9PizoRuq3wpmJR31+9ggfvEPy78rHMrq97bVm5oaBYcqtPl8irzB7R
	 rDi0gnnpcwFRH+sN3KLSbStYj1tLVlkvv+C5Lndqsky2ox5YMJHsIik+iQ7XCJJjvW
	 QyHIupYZl0f2dw1rq1K+EN4yBxWCVNuXaIDNzxP7FQAzMNe7sM0VwGH8i2wTgLTJC4
	 +QMj1LZqxWR3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E44CFC539
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 18:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176383571358.25091.13714265132638204381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84509566677b11894be22aec6d81c895924011d3f8b8abc1582447d84e160424
Date: Sat, 22 Nov 2025 18:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763835713
