Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17D117CB
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86B73C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670994687;
	bh=CdMGIfat+rS0DZxdcR5U95Of4oN5bRwgEzEhgTkJ/lQ=;
	h=To:Subject:From:Date:From;
	b=bQhYwdssDUZdJ+XbGEC3lMRsiWi7muXWE4T0/BfFGzgGvWap+njf7wso5DmEQbRV7
	 Oty1yQ1+xuHxN2xsAJFXqwJkVV4CTMgupv2Fyf35MsQcFI7vJfWDrYrKBR3eRuRGl/
	 0nD0p6Fceqo+yI7tasH0Ten7UW8aW28aI+UWp/wMX90SdHNTbHQjuYuv/W6NpQxiqs
	 Kivec3F+0qT2UrMdSOcuZX+IIOPIo2Y4oA8HTz5g5QPXP2ad4UD+d8ur/djm87lkja
	 +0LlsS9wkIaTcCIEXLlAucB9R4cpqqAqZqQunCvid+DFGgCNY1Nd2nONkMjkTaNash
	 cS4KqCCRd4DRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68454C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167099468739.17030.5867337037081640102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e5b75a9d78bdb25142d58f6baafd027571066e87ec79efcfe3462364029cfd4
Date: Wed, 14 Dec 2022 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670994687
