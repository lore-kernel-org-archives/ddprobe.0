Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ECCD3A9610
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791730834; cv=none; b=gylWYT80zl1HL+bwyZvho42ZY5NpVLQJ4DmEjkVnSxYqBOlu4Jw9q/U09IIwcWdWc1+ZHOB9QYScndIzyXrkkCSS1cfpumjdXCDEZs1Fud9OTzRCsAAc8M/2ufYSgSJHfM8/iCvHLU4WwcK7c2i5+lAl8x06ZSsIIjM9YJyJV6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791730834; c=relaxed/simple;
	bh=cqs4to/AWqIdEw7StMfP8l0W+M+L4+UbMyfydUy+xvg=;
	h=To:Subject:From:Message-Id:Date; b=Nymrd+8aCFkZHiOLqCU1fE3EndTtJ2IvN/YELp2Uka3NzOa1+OwDJ/Y6ZWUru1qT+qyzPEf8pGSipEqHPPXUxzsBXaP0Zdz35HZzWMYAgDzo/tMT+aWP0ZyxVywXFd6g+1rrrBAG4tVdJsVPShC9Z1GdHtYvyUP2OLq4ZPFNFIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDPqjy+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDPqjy+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C65C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791730833;
	bh=cqs4to/AWqIdEw7StMfP8l0W+M+L4+UbMyfydUy+xvg=;
	h=To:Subject:From:Date:From;
	b=BDPqjy+sqBKjZlZk7+C8ZrHel1bc7n31zTNLhGddBTq1Ty8E6rU4X5AMwawb+kjF0
	 uMXSBdLyp9kac5oiRXyBElsN6pI7KMyzQ9NPDZIT+t4za1ROFe1LhBmRx8JJGTlyll
	 RWI96MWnEiYncsbGMdfAcly+IngvyrdaTC8n+vkizg1L0Q0JtM94kxprOcNf6wKJDk
	 5uy506qVmRzCzEmHHkbICjYcHwDvaDfNCCW0pN6EiryoIvmZSW/0g76E28srpyIQBT
	 QWes+0/gWFJyujGu6whdI4NbZmA7bI4N65ownylKjPYzUdWV38y6tZSVe/jjhwiyv0
	 xEZCE2x/KLJuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF45DCA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179173083368.26831.2659203593507213501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 615f1ad7356742eb833c74edd7e646b3ae5327003948e9881e36382aa07a9576
Date: Sun, 11 Oct 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791730833
