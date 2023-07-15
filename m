Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BBC015B8
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 17:11:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF071C433C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 17:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689441068;
	bh=oNtZh5MSmDEkxCnKXHmLSNHSDQZymvGTQLOxHe7FS5Y=;
	h=To:Subject:From:Date:From;
	b=HrU6BNgwKCBWRRQHBMdH/B7kJmib15h08gomFIYdqnh479u+FcbbgCWnScJ65JWju
	 BsRQNB1nV+NCBtK0+lGgy9v/p29XdAf2oBjarDp0q5yT95U/CMmqxkRRgZS7HJo4n4
	 bJUWjoFBV3D4MGk2GRG4Xnq181Qt4bvQYO7uS4bPJrsSgErX6G+yopAXvhv8Hw+paW
	 laFm5Sj6UAbA8BbZB2vShBJ4E+g0EQ0T46vRCWvDLuBgWyxf4qRTuFKtD+Pk0c6fgD
	 YiXMEbOREJ2mBVpKhCZ+aqx2Dkdz8K290hHWEFTnoGM7gr1HS/L+Q3vhS6BU/kCEdx
	 3xh5UpLj/Ul0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6054C001B0
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 17:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168944106873.21431.14096305880478994140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71986778318449b7ff0963c2dbffeaf324678d75537dfc9925c50e8daf6a7c5a
Date: Sat, 15 Jul 2023 17:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689441068
