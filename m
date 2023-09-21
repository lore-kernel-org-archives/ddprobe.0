Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85E65168B3
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 23:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B68C433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 23:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695337508;
	bh=tmsSdZOVNAbiH4DmiyIm0spIgFkKaxYQaVI1P5Wr/tQ=;
	h=To:Subject:From:Date:From;
	b=aEXwcsupAVSpBMN8StR5tqdPKwvNybMj2rMFXZ4eWYl0Smn7LwOP0tjBf8uAl6yAo
	 0qATW+fYyVQRWiuUmxdhGHS6uBjSXNPROmGDgSt5rZHfrymHtaf/NkKUaGJr5IKCSm
	 sG0lAzipKuYAIZtqedVzv8WDX6UZCDN+afknI2I5w2S4Pv+g7A4f9uqPECzRtLeMJP
	 /Qt5FXBPKRV71hpH92dZIF67MdSOxRRG/N5KTMjU9jqCJutpxWY9Pwz3Xv2is14lrQ
	 L5EWoTDzkrg0cZTsJzfaf5vUpnEeFEQYwoqeU3Ine8zi/24GrIt91a0ZXOFABkultY
	 7/qLNihslzpww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2548E7D0A1
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 23:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169533750869.28570.10600520828763014644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea7165b32ab5a6a59d3967b479cc78ed35b9f1fc2dd4ddd2b0bb521a09e1554d
Date: Thu, 21 Sep 2023 23:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695337508
