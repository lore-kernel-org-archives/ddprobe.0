Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56FB442A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 19:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70499C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 19:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661627452;
	bh=HpPG+2BxlAp2GRMU17b3aTkdiA4Xtu4wwhKvy3EyeY0=;
	h=To:Subject:From:Date:From;
	b=ondFcAWxxRAJxgrpYR/QpLwto9BWo5DyQ4T7xkTs/KxuvZYWJPvZ0WEsdDWXBnxB/
	 M9JrOwzkPlBiSEguc5cTELIYevHLysS0b6FWni1leQYIUY1WZ8ijjIVLMLTomC03YG
	 6dhOFTVISpS79ls9kuX55hbmFsj3qxwJQArIb5t4+YpEIrd5vWrq1bNhVYyBTrqZk1
	 OmhWlvWn3RJr/VhUbATy6aMXAB6x2dwzbAKSxPgdj7MSoaQPNyI3yl8YDlU/EallKB
	 MWNcu2avQqC2NRj2WiXTFZ17WSQ+0T3jgBcxYtOvb3BHqHRvsCzeQP6YnyAt36uGx5
	 VF9sfQ/nprmKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55529ECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 19:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166162745232.579.14896009884467084099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 056d2fa4025fdaab7b6e5b8e48dcee8b465640c3a4c1bb37b5644177fe6ec079
Date: Sat, 27 Aug 2022 19:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661627452
