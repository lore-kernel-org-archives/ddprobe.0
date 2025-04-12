Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508DA19C554
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744493994; cv=none; b=W0yoFhd/KaX2iiNy6qO7YZc8jV3k8Vgl88ELMIIfhoi9Cd34rNlmoY6juWty0qNT49vPx1iKQ8xjp+rKYaiGUn6YsWi3RGFRt0su6TomqVwM6EfNzkOkUlYqQbDSKaNwn5EX5V0Z80iNd8KElRBH6Q5AjA7itTidSLTRxeR7VlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744493994; c=relaxed/simple;
	bh=ZOwb62yGBgziuf3ZDtajmUK5zX1QuiECz/cHgZyqoI8=;
	h=To:Subject:From:Message-Id:Date; b=WZUfXIjDa1U3awBP4Fsl+NqmkLUV0mlBoL8eH2V9euWOuy8sIGU2MuU/OHbLXkzGU7TDX7VGTlX7EFfW+H/IeO35NjbeRh0l7Y7xGrdtsfXxaPO9FbCVpHe76tKf4xFiL8fPyL3pecjpRShCp8TTZgFmZCJH3YxTQtAgB1PdRA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fm9HQaOF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fm9HQaOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B817DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744493993;
	bh=ZOwb62yGBgziuf3ZDtajmUK5zX1QuiECz/cHgZyqoI8=;
	h=To:Subject:From:Date:From;
	b=Fm9HQaOFPqzp2kYv/UR4KKWikU2RqlfeLaOn1wo/UQgeFpAlCSoSLF0aW1CrISvvc
	 aBfYH+N7IalPcadpWVGAynf1iT/xLeBhubGCFCgvLUs6Zxq/9/x4G5YzjcPdTIknzB
	 i4fu8wJGApKkRnM/BYxu1DBY20pSfO/T0v/nnDGTi1yhtIurAMQSb//x6+vH/yXXpT
	 8M4V+v7Ebenx7pM8LrO/OzViajT2BtFclirtcdBW1THYjb0NyWE5jdhsnKrbxUyIrX
	 fJ20LhMz8rk6SLaGw3ZX43UVYD02N6tOS8TZpJa0jEOzM/zvG4OqUis4GQ8m1Koiaa
	 eQyDur98IpOIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB4CC369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174449399361.10167.3472423986912777624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 202e533ef9deab45683d807a40550014c7430366e944f439a2f7c26a62403318
Date: Sat, 12 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744493993
