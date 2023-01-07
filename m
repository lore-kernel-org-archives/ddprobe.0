Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04AB8EA2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5F9C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673088087;
	bh=1lPNppmO375iTxA5C5JddKiM6YLZXj8uxNdGS/7/ZkE=;
	h=To:Subject:From:Date:From;
	b=ulNQrNwtwoKn1e9ju3q4QuRugWgMzn1Twi+tMCmK4p2Uc/7vh5F/qnfT+YdGX3t59
	 fdbnjNEWtnAhlFdQOLNTH0vvse9tt7IaNPlOGfLHHeGPdUycEahPfe1p7ORlFoO/HJ
	 ZcFJCN+YK4LXfVLmEV6LElj9640zgmkOn8FhBLbx5+pgNj9ZE/WXK7j7S7Qedess9F
	 7mq3sBVOBH4spxp0x0u1/xH0PRgPah/YfyyFT1wVIiFZdD0Ii4ppLvJ4kwcMdj9H6T
	 v5RNbPIy6Oit6Y6yz/G4kwbDQnKeJGAuR+buMvRYF14MuX/9hpSdH/0sXzb4lpNzOW
	 oAFMpX/u3AmiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B763C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167308808749.11519.7913143425131940963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69006374032bdc9e7a451dc5ac0bbb8be61e5f86631ff38af803ee7238d052d3
Date: Sat, 07 Jan 2023 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673088087
