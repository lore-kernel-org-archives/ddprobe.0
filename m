Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2CC15B9
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 06:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF78C433D2
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 06:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683356285;
	bh=Htr1+15ipUwvDDxne24p9J7JMODomdnejIRm+wqCrV0=;
	h=To:Subject:From:Date:From;
	b=U3K+b5NRDOl56GvkrgBFL/8G52Rm+CePnV9Io/l7V2yIfTje0BmanSsAsKLOoUCgY
	 6SP5CjMz7e3dlSczb5aJj3Brdk23pzjjkISL+ALvXcg1tAsUM7pCCLloXfPQIV41uT
	 gMaiv3qnniAyQ6gSDwqkduZfvT1Oy1WMON+5tCE+FY2sTnJAQDgNd6CkJEWKwRd7P1
	 IZPPa2ibxtLxgX9Oo2a0KKk6DcucqtzVqdDe2XVBouGLeaD5pIYB5wCrmCIKIYasKk
	 22H7ti9YFPepMr9QYkQQhKSizfXsD3Y2TKpHtYhB5eJ7W6ZuLMMohbV0e//c2a8Zg1
	 hutydjcpgDHqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C405CC77B7F
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 06:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168335628579.8013.8775570603657811653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899d174e2dbabfbf2f2f70e838892a290cbfb8b73be93617e5f08b044cf69fc9
Date: Sat, 06 May 2023 06:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683356285
