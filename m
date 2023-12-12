Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07DE56FBC
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+UoWZf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8315FC433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702351696;
	bh=Hak0cfLvFqqdSkqZJ84otq6Rqx3kUW+oMeW1D0dKTio=;
	h=To:Subject:From:Date:From;
	b=W+UoWZf+qidS6O/KxabWyAdWPXpjoDlwQCIEvf1+4oSHpxgoCNv0ZcIzerRtWTexv
	 vAZ4bfvbEm+6PQkcc+26cvopfIfGnv9Fjg/v6AyJ67quDgLK9/TTG32vbWYWqebn2g
	 KsktOyD+eT4hWpLCv2d+payXw3Z+fo88srJ8/S4e7MEPIkS4EeNd9gd2NWrbC3Uckf
	 3gz9wFvdhy+Yk0tAYrGZp8VUb1G+xxtha7Pm8DtLUVhIOjFY39Z2YsGn4KmtjoTDje
	 mr+roUMU09eOvOECQP8YqPodwtNDPpTzkL366uQTlc4ZMc2uCHfK681dkHWvGmsyYf
	 BWDDugF4hrYlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67A63C4167B
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170235169641.15167.9055825590846067839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df2019dec36c96400ee490dfcd5af3de6f71a048d2420c6da73502a39e4b8bd
Date: Tue, 12 Dec 2023 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702351696
