Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7665D23BD
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 07:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC953C433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 07:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687936389;
	bh=6u1zfvgDoHhRJnbG3GTGI0bCZEKQKddgF52TqcFBQyg=;
	h=To:Subject:From:Date:From;
	b=pBp50Hr9hu4/2dUTurD4ruRCaGmaJ/H/ffox8/RvUdjOmN0VeM6vgItgVTutCrdyF
	 9U4s1AycCosDVfreBejTSfqmq6ZPDfktOXdB0+eMYubcWp+OJvc7wvaBs8wc5D1fHB
	 Yu5y763mJTERC0bduTat2WBEbxxyTZu8o+eJN7C7pU0i7Oa0RY/QoSOUw34aP4E00B
	 9p2Q3yx9YjonBy0Z5h+9Exnfi9PkymSuzjy3Wzh+7e89GaS4Xtt8vGKYwH3pg8J/Rj
	 olen9bY0GDJdmUJ28MvBBrm6GL+43xYzIUxWZKRfQaVsUyWOHSgx++mjijuw57csBH
	 L+2yk/2wuoo2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0088EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 07:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168793638883.19194.10683273381537281860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8930f8e6c45b66bea661e898ea4ac57c017a9d8e61dad2f90699587a28ac20ef
Date: Wed, 28 Jun 2023 07:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687936388
