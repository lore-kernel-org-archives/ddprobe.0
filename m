Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53A94A0D
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7209DC433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661962253;
	bh=VNjBL2B8HZUMe0Vpb/T/jpVOf//IFVH0oSmyNJ7dRw4=;
	h=To:Subject:From:Date:From;
	b=CdCEcH5x5TO4vtB4ByH5UNCB2+2DC+m5/lLut0c8RZCtTIJo+hnXodCoajhSiO8ko
	 24WZltmGjqZ08YqkiXNvAWrIrjCH2Jr8xDDHhR79s41dVNIj4v/XG7OalqH84m/He1
	 zqR0FoGV1FL461l7PyEKAxkcUsmvDbJfdPhLMkpS2xGWwY0Xlwz6bydsP9IpeCChH3
	 oymbvehoLcr5ZLdvu/2Q34PUAicnquPX8j+eaaQR8ysZ48H8zM3GWvzkN1iTmjSU5g
	 5/swrA2NIq6PzPt8BrOQs07/b7V+YHWl2j9y/BSNZCgHJZ7A/g9o38H1xrvOvnACqi
	 wU8t/f3ADqA2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54703ECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166196225333.15072.1250157267655947484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8689130dc03268d0077b978c91fd05a50c4d4707b8688020f3a3882f0ec179e0
Date: Wed, 31 Aug 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661962253
