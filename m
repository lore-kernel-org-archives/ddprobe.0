Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35E97C
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70C6DC433B5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664669453;
	bh=sYDyHxGP2J765BWrllq2gD5y0G6XLuytDoSVpfezhC8=;
	h=To:Subject:From:Date:From;
	b=SsFLSvaEK2ls8r5SaidkJd7GsCnY/DY7P/pT0lyNASSEB9y6xoQQZ1SpF5bZP1dT9
	 CsaGZjpBHrcOZZXcXLWJZdXpmwxRdqs+Uefdi2Jle5YoTR94o3m4jBo0fsKuld8DMP
	 UW7Wod1Ekv36Clxyu/CHADDVYBoXDcAxdXgAkDy7NzTPKkBK5n80SSw5tuCOaaJ1t2
	 lbrznkddjufBVJtWvHhXCwOuy4erZVw3QmiPEY0RLrroW6QA7ZuX8QN+sR8PLn7dP9
	 NZE+ydBYJn9CvBO7984lr6JssASyrNFSPj472LcA07ox2k5kl6hE1NXwZwOoZtUzP2
	 jXmUhtRSRrRhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DD7C433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166466945331.6737.15875177534764494324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 368acffa7b358afde1ea3c33b9637bbeed00928cecd833ede827d303e044658d
Date: Sun, 02 Oct 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664669453
