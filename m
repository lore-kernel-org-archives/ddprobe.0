Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A79287E
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67BABC433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665401453;
	bh=MFQOQp9d5X02fXaanKLZeZ/NXazMnmZhf5FMowOyjYA=;
	h=To:Subject:From:Date:From;
	b=lAQ6f8ayBxT+BySCyR1rhISJb+mYrklOg0ni83TRPKoxrGC5iVCDvzIaJrsqlT1RI
	 q6itICrxZTt7P/6TRBxmYRXcgfhE2gAcW0QA7gQxUlRkzI2ijJz+Mpm6rC/8kBxy5h
	 IPDu/GaDWs23Sw+qo3gS3Cnt6MhEc0yiEm1JRZn2BQ+2L7OJAeJhLljLkwPPnNU7wD
	 prUV7+ITEoG57fThvJaocGUNlHbp9FSAQLZjuPN+zBEDxawOXPp8p5qzbaMaM5BUwi
	 q8D7R501ndNz/8S5pDioP8F+8EUiI838Hq7T0RGcs086dkAd/4/v24T7GE4afpBHvw
	 Llydin/kDJMIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E1BAC433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166540145331.26792.17858760738206581484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8401bd054c381526bc3ac55030df93e9fea4b4f2f620f003cecc45cd691d48fd
Date: Mon, 10 Oct 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665401453
