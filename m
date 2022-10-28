Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89C32F44
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E97CC433D7
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666978854;
	bh=Fot1VwFTXlDpIn+8XDAOnqJER0DqlVFfmo1IaAgEPFU=;
	h=To:Subject:From:Date:From;
	b=uiDTAvn2ZtuxTwuKYSiFbYrfXy0AQQZp316AJWbqEUwJ90bYkWlYIqup9NbpIlYeN
	 +nanIOnWpIy0fD5lVT4IsGxeIVwHesBpdzcV0TIC8gu2PUxBX2U8q7fCihCJYgl8XX
	 suJAswUYcpDw9KHfNsNOEeeCn7gdS7k6teYlcRYAyMN2Is9R8QRl8QCjiIGxpeztmT
	 zK2YoSlRM3sJCduTGun6fqsFR/cBL0Gvbw2MoYzXHC2ayMBCi5MTGGJKK0ciYgYVdQ
	 mDwwSl7Q2+9DqPt0wP/yc+s4JqHDQij29haf/GaL5HCwfXt4AH1KyRz88fFD2I9Zu/
	 fFoYh1PGtg6qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A78ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166697885434.28815.13760673510966448220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 176a8e392c9a6ba01fa04b85bda16fc802294800b12ef6d31424b931ce0b9d29
Date: Fri, 28 Oct 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666978854
