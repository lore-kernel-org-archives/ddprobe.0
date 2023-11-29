Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F4E814AB9
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1UDgAxR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7746DC433C7
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701274096;
	bh=0cf3Ad3UFva0UvonoeERl+8XPM8YdeMyQAZpsILtGYo=;
	h=To:Subject:From:Date:From;
	b=m1UDgAxRRvQ1UTt3OIwUgceQYCit0J3GNhs83YDhW6DtT1qsGsHZy0SuB+NqGyeJz
	 K0eRHh6D0ymdRq0p6AmF+q4+VfMUhg7/D0FuEwEM/t+JCVBCyTldjM3laOS6XDg7Y7
	 VtUowkknpwLcCdTmk8MU33POVbaHYPhUkVCMXFRauwtwcjuffoQi7nYploVABaZZlE
	 2jn5Xd3dEhi8c+XVVXXuKHv4YzP6BfcHWWgVbnWDdgOCHOvDCr09ugseLHsT1rkM1D
	 cNyTStYeRXGsMt8n1y6ljjvTosQ+gq+tlQhci+tsr60y0kHVSz7lHV9rVYmOxrg6NX
	 Rpwi5Xf8hxcuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C4AFC4167B
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170127409637.3053.8107142844549683419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eca142bb56c0a444a889faa37c8d3b52fdc54e96147a39be919065a1ad20418
Date: Wed, 29 Nov 2023 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701274096
