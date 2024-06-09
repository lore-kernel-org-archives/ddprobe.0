Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532F522619
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 12:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717936043; cv=none; b=B3qe8H/FY1pOqELmuvpdk4b83llU/KScpqm2M24t6JZhul/90aZG7wlXOPjtMCfQHqGvSeTsSIIbwQP/bO4jjjI9WQO++sBNP3Xb+GRpN0pmAE5F76ef4cSRgpabc699sH3BBjI2oj3xrmTbTvlcCH1hBFOGkY3Gy4EhhoTqcAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717936043; c=relaxed/simple;
	bh=/4Tlwt5wPwizpsx8YQGMJdMKHOppls5850/NftAHKZQ=;
	h=To:Subject:From:Message-Id:Date; b=X0o4D5EVdY2S3XJWUiwpqNOGRaSRx9iRj0BwbbxkSCQp4hfGHFBx1l0PrpvtjFGeFgArNVrpoxl+JZ6T88WCGoyS7e3Gp0aSK7xj7G1vXErqCtDdHyvQu50D+6oOWoXmA3lNykBOu6/7JWqCaDzO9vTfI1Ev6A1snGftI/52FMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUPz3FHH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUPz3FHH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08B1C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 12:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717936042;
	bh=/4Tlwt5wPwizpsx8YQGMJdMKHOppls5850/NftAHKZQ=;
	h=To:Subject:From:Date:From;
	b=cUPz3FHHe3DTSe2gM8tpXnCbqYIhhT5pQGR+B4NOGRSTytWI+5ap70lh0zZDVWvdm
	 LhZ/xCUTT9b8X5/eI46hN6yxa8qb2B+U/buU9tjcbo2s3KAhgI6fpE52B4rLbxSgjY
	 3hXbsLq89f7x/ebyqfzujRsDMofEGDm8piFbL3VPjx/BpdRUvH+8v9759BHMlcqbPV
	 tJNQ1tjNTlsEvFBZ9ItXj3MoONiaaLI9S188NwIQako0RMvR3t9eJFJFLFkWcCbrNl
	 UrtQmwF5Yj8q6IQ8xoT/oQzgW4BVXuLnBHLSuue8TUfY39NNt5LEavs0dv7qq1UioS
	 2wbOStxaF4Faw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA7FC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 12:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171793604275.16461.13224023243450957792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecce40bbcb6455b2f2e4da5b4dffac183dded9984d7e9b93cefd8a51c5f54802
Date: Sun, 09 Jun 2024 12:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717936042
