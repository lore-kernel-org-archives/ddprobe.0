Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B96282C9E
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 09:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FCC8C433D7
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 09:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661766052;
	bh=L2+Nc+OZxTqI2f7OHYiyVzSIh2vBsTXZpAsqPom4V9I=;
	h=To:Subject:From:Date:From;
	b=asJ+jnFXs8FB1KBa9nJaoRKnIfM5a0eDOZ64p0UBLJfAn3bCyYbELPXMAQtRQ7t0q
	 T27isKbDrNN8S1GWgtvTLZzr3uOMOj95bE/lWhMbD1jyqolRX+sngT7M3Ab5tkGnIJ
	 BdE86mrxUINYEflDjwEkeRKptqHksDqQUxWCN0KGiQLV7l2WJiRP45DUTGJKS/xP1x
	 VpeUX7PsOlwCIknSO+Ouc9DVDPl0ky55Osib2khzblJP08WFRu2MZtANRx+PsbOtVO
	 ACNhjN28oWyzvtNsiFbQtPi2p000GRV7lDGN+BOzcPbTH9z+piXyp9ySfdvw8eeZdR
	 U8f5lltcOuMlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BB40ECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 09:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166176605236.30096.9301287732469940168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39a49b6beef24e9fd151826210833d3e812ef04071f37085a58a1d95afa00b16
Date: Mon, 29 Aug 2022 09:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661766052
