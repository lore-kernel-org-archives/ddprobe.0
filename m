Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D181FB2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87DDEC433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673943087;
	bh=Q8z82a7IpBb2M42eNM7tgNQniJJwADIG1yFC2A596GI=;
	h=To:Subject:From:Date:From;
	b=O26Dctrb4p6Y1kcIfGvfkesw0loNfajDs6N0wzoPL/qLh72X1tIW/UGPQa/YeVXlV
	 yd9/YEU65xlaPf8jJMn2QTaeI7OIgoeuMq9Hhlsd3kgezEqGFzpFX02fgji0cm0j+t
	 Or105QWnLp4sz+pWl5HN+RZ0kGy4C8QTq0MaHKepAYqEXSSap3ve9UfchiI6jleuNn
	 CAVGP/0RvzAiZ3AY76OjWYbISo9uNPrlI4t/iNlUbXvGOmj3D5vZaWYT78uVL48bmC
	 rNerYDmyHmtcmgYMs10pWtUaLlsWPzYv97yCZ1hRPlSM25P/noAWExLzL52WBjU2UJ
	 GbjOOxNkUlezA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F481C3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167394308744.17530.1862284936599396309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9c6a64ba9da1c8f10baf88adf2d22c53d5bec5b7d64e86518ec241ec502d125
Date: Tue, 17 Jan 2023 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673943087
