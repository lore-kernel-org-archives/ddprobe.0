Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96F2134D75
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 18:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0941FC4339E
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 18:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686161526;
	bh=eDbamPYdWLcRBpUXUyNHxVfyxkOSCPi36xMBzPh8WIw=;
	h=To:Subject:From:Date:From;
	b=HKqIcGOQT35/3tueSS/zfO7jvZmHjKb2CzE1R7jS/MAmIp/L9Zq5sTxypmkz25SsC
	 Y+g8DsUY4CYeaN00yp6MjKs/ZYA0LlP2PO7r4YqAMXv2prkFU33kulKn38ePMdS2p5
	 Zt98wb65YSp4MMNPiJVn4sF6LLX4IDlps3qjFjPWFT3bnm9bEli1Dlr8jiHGJqAJJX
	 eQhF8hxYeXbygFEXjvV1EbPW5oVz6WcktkoX9meS39hb3fK4OoRw7zBG9DXTJCXC0g
	 q2XT+/8Z9D8Yvj2dRrhEBsKK8FdLVtOJMuXs5VO/pRiVh4u4k98HXHJboAmY0vdu1D
	 pBt3VfCDqMpfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6A3EC7EE23
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 18:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168616152586.25226.8406074476575774835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 836b3fd72d923ba90be5b0f58318c7b5c29c9037df4bbd81155bf9ea6d3f3f52
Date: Wed, 07 Jun 2023 18:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686161525
