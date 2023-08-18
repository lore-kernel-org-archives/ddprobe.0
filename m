Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A5493D7F
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 08:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D995DC433C8
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 08:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692348248;
	bh=sRNAIMjkQ3Mdebc27JK08jCVRgNUdqSon3UOuVntHgk=;
	h=To:Subject:From:Date:From;
	b=m6qh0m/E3Z29sOucpB+/jrRBwy0/qLX/RxcM7AU2up+bh+oE8eLpmbvAbMkMQst35
	 qspQrrUD1sephjVnr1oM+STjQ1AjGNFWJqv9iPQ+Rym03oGxcql9wnnB3Z8SGNkMRN
	 iSIfUPI0fdaW2kM5R7dpUqTGnJsSLir0troM6wLsgBoC8Ax03sVIxpbBOtrD14/H1c
	 vEkItbhktMlYsHQmHc/urnbNBJQekKnP1uqzSpDUz4yhfuwK92T+//OaQV2LRgTVUM
	 gzrvavYmZtiORK5uaXFd4fZzquG9hoLUbsicCphHhrBYAGGb/3C4fW1e/4fExd5UGd
	 ypVFCSnCK923Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5BDC678DC
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 08:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169234824869.655.9684649153668847902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f4752beb1a260ad90db3f870fdf14f9cb06661ca3f0ae0f549c33cddfc4e20
Date: Fri, 18 Aug 2023 08:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692348248
