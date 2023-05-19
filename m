Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CDEDDC8
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 13:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDA0C433D2
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 13:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684503485;
	bh=QJQyWmi8RlNfDuvg1lladW08YjRnJ2tv3m5gd3wGty0=;
	h=To:Subject:From:Date:From;
	b=NAjrpH5xsXHuaYRahCdtVhKp/H+ip0OseNScZcENaGl+BZBPl5qLxU9UFuFycttaj
	 wrg8QSj6ubVWAtzssbxbCqYoe2Zvd/M2aoWYUCICbBCaDbNCHtC4TT0VZwRkQclH2o
	 tE8UU9qk1+FrJV3eZnhBied97MmIKZhLsjNRBdY/uzO0pZCIh0c8uZ7ArDAG50Y8U7
	 tN+4kNH8iEYXvA/y4bVmCSfD5nPqD02VSmRGqCKnySuCL6Xnba5WpmxJDozQTAB1tB
	 EvNHjr341Bc+/aNJHRPUusEELCxMDHB8yADnT5s81xnQirbgjlVV8nMrvZQGr/CGLl
	 8bkywK9pFNOTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B490BC77B75
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 13:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168450348573.11301.14818766532971073490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a3e240674536d4c0bb23fd447622d3fc8ef435236fea3b3653ba1a8bfed613c
Date: Fri, 19 May 2023 13:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684503485
