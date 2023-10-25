Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D7E848B
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlTuZz2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE2AC433C7
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698271096;
	bh=+iXpu4al72Ws9dcqm77xELwHNuSqJYXMvNEo8VsscEQ=;
	h=To:Subject:From:Date:From;
	b=HlTuZz2ihw1fpbRYOSvuGgPAXxUGZwLPyyN2X/L9F4S0DQN7GEY4Zy8jzxCVIoHMG
	 Sy0Sfj8kWfBTQ95erreWLFTOYjwgEeXbexe9fz//bTRWwcqTzWF9tMPwQIdhf3q3Y6
	 /MYcquhcuTDFJg77gWqzFYpthvGs7d5MmUYLzDf6dCdqxrvvxKIW8kT6x4Dh5DT7zK
	 TC2KG0mZ/HVKWrnFlX94xnXzDGQE3mOiKy4cbm+sCRoqJCBmPZbyAEYYyxS4B14zdV
	 Xyo4O51Ln25pNOSj555BqOqCLLvhUyW++vKoMh00vaoc6FguArTqVNxfkyCFgTTBQ6
	 O70PVvyd9y49Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61BAAC25B6E
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169827109639.27817.6247987547319466331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db12245ba5d8bbe8234a4ae88a8db68f1575c98747d12c6ecae5621a7e4d08b5
Date: Wed, 25 Oct 2023 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698271096
