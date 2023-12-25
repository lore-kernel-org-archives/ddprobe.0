Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0282053E04
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OgTKp+Do"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D5CDC433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703539096;
	bh=gJxn2TdSvbiO9MIm2fsKtfcTs7BZK//8jdhd7S4rFfk=;
	h=To:Subject:From:Date:From;
	b=OgTKp+Do+jFkAI62ktbPnkWJAYOW3kIHu3xIsB+tseorkUL4sZ4PXn67R25knOart
	 /h4dHR7b0xUeCqYut1TCFd/PmC+zIOhbZWYksUp6H9H70zp2GPeevNwuY+OBUnhnvv
	 TFSuTQFgvK/F9Hufc4Ed6yDMuiqqVk5DhR4htLleS/s2HC0+l8CvvoX5+nUWplCs6t
	 1jfQarpVkFVOJ53J+ZpYiCvpO9edlUMNfugaNJzfTDh3vR9GG6yUr3lgR5995u+xfF
	 xkswG/HCtTOhxaVseB5++Ry9hODy2QITwz/iCD+Avfy/FaPdrM46UNOy2K62mJWwOZ
	 ImeFhIo2FTB5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62554C3DA6E
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170353909639.2323.12358222823977080144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8497a18d6beba06121d26c5e5850366eb8425a176828550f4616f440b46e6744
Date: Mon, 25 Dec 2023 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703539096
