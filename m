Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA280366
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 03:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79002C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 03:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667272254;
	bh=hMfe11dEgNVGAMTE3zSEu7W28QNzkVw14vebmBrwOK4=;
	h=To:Subject:From:Date:From;
	b=Mqm3OfHVbD05sSSI6MHgVkgqY+fOgeqs4jF7ZOjDPnd4OgN9YjGAYT/tHFr5Oq/8b
	 R1RXpacsz/SgFiO1Qjy6urMZwjUuv4A/YlHRjmpV4PnAQxmaZBlCU3TlI4aV81mhBR
	 5Ab6zwiTvaIfq9j7qUjZOR2BcyYsqQF7Hor0PloeQ+AUkDSuGdpu/C9eOnrTaCOmR8
	 EGtZJ19af0jiAsc8fTSrJEwc0d+mv1FfpVTdySKQASVCbvAX94B+0lKde36fvmuUFQ
	 hVsNX++rSlIPqEQpAYxFBsw/y2Hx2Il5UdySITrBH6cU5glcIKnU0Im1Y5aFXlDfFs
	 5Kxo0GUoX2yww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E43FFA3741
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 03:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166727225437.1854.13175480246798964764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 880b945ec57a52058720d14319516faa16582f83d80b6ec148954e5e089f37e7
Date: Tue, 01 Nov 2022 03:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667272254
