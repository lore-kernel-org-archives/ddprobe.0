Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6435D501
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65331C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666894254;
	bh=5PSWYhToBTg5PIGCPb5B+K6jkcQ/qOuxssqMGadAHrE=;
	h=To:Subject:From:Date:From;
	b=Yj46xlkXtwyCXra+vKct4VPgIdYEfuhV7YhTCKlNzB0fn/sWojFURn98/QySOPuU9
	 UXMheg9N3pqTIwEuaeD0ASi6avy5GI0WOhAH2WWnzX0pKEhc23bkqxS3h43PN6QfKG
	 ckma/pW42Zwk8+I4k7YxEGr5B+uugqBxt8pTwCmFNXGmjQHipBW+Urrm/4qXI+kMBC
	 WxD2bTiurzZ0V0MsHAar5K8Wq/2IYWVbFpc+I2rVEiM7qZ4vNTchDSinwW303OmzkM
	 TYv4/b9lJ7Ld9Tr3KaKmRdZSyza7TwM+LVspZchEEcdepis17otetSb1drKizja/Fg
	 DtOLyMyiM5/Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 517DFFA3740
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166689425432.26075.4235209607671080287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4523efd688831b85cb48f344a31ed1ab16f35616666cfb9bee6f619e206c36dd
Date: Thu, 27 Oct 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666894254
