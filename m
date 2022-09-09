Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDEEF808
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF3FC433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662723653;
	bh=sFMBw1uV2TD6VDT4QQXHrzEEZXW5q7TidKHdI2MsiaM=;
	h=To:Subject:From:Date:From;
	b=PQTj4hwzI6Qim9yfmNg6tSxkNRjT976M9Z48nSX+hZmXCpabpLp25ebzWdtMHUlEu
	 NRfB02thODb5B2zowU7Wpx3MOJItkNLOgoi1pyVfctQeclIFenAKTBo+IyU8e45RqV
	 yzymw7r8kgNh7s5KxBloLOye25Lh5zF+1BzsAYgjzmdt2DvJsBNRd/sYHf+J87SARo
	 iXbqv+i6LMbRLkMtQDRSBmOHx8AW+f6MheHEDK6Fl9mNVCZgg7C365l503fmHEM0pY
	 4nDyiF4XDvp1PYp8jPQ1gaqFapCT8SFM9aZfko8iaskVBzlSCTL2ckT+Pu9BsrcHN2
	 Ok/0dwZoZMnkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57F8AECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166272365335.20402.17668550390334988110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb01892728003861861c0afbe530d05ff3db68c32849af6033a4a8e6177b832
Date: Fri, 09 Sep 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662723653
