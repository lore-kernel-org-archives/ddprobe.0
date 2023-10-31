Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193EAEC8
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SiGWu83c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90DECC433C7
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698718096;
	bh=PEUr8yYdZXHomq8iRjJggwhm70T2w7sDJF8YaAfEsQI=;
	h=To:Subject:From:Date:From;
	b=SiGWu83cW/n8mfZ/VqwV6KISkqdHsvP8LDqpNuM968R+IdTmEJ8yT0Ld3k+wNdxX3
	 SAMQPhGVtgbvZjxe5Qv61XA3X+9GRPkpaS/xAVIeB8simXMXG3HdwWVh4UBGtwE186
	 HOYgc3AoEqHZMz2CVX/3bZJ8Y2wXqLJrFpcfzbUzp1d+VKWvAzqAXLFQbw5be5STIa
	 5i06EAV6fVABV3TWRioxHvcjsACGniqSJsI3m1ilr/yqG5gaMIJccM31feZiRg9Sut
	 FAfTfrewZtyjkgGU0q+EFjjnLYpOG7APiqgvQYQ5vF4VojWLlzpbHr11ulqtVRCjak
	 h6mzvO19ImU8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72BDDC4167B
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169871809645.13724.3897832732205333125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a0e1b71d2b6db1efa911ce0afc0b9479d6c85522e4e65b2cade14cb604d0327
Date: Tue, 31 Oct 2023 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698718096
