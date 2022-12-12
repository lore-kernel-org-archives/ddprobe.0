Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA57D3212
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FEF7C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670866287;
	bh=OMH6iIZPK0GgCLVk3fTDL+bu2sdlzR46MzxTFW7P1DA=;
	h=To:Subject:From:Date:From;
	b=jzxSM9ud0Aiw4t9aj6bDy3uNB4GOQpDc8rxc0hhpyLN0Dlp/bsx8KUtosw6D6G/nU
	 z+CAaInW61PSmvu+6urZ5ywaJuPCYw14/sYCV1HeJPoH/oUHewkYc7edCCb0+YSEW3
	 iGws4o+iF5fBw9/FsNbJGSfXpPJEZNrO8YQKzQ8zYBcpGucteJT9NBzrGBhw4VTCj9
	 ICUrhVpLKrW+07dRG/0r1zAV71ijGBAilnmtMZ6N3IZ/aQTCMXFryLbBXEMCjcvgVV
	 V0rnGBRaBQqYnRYw+C02X+1xURiakpN5ZV/0q2Anyf1AvlTKE+Rmq0PtwoDEe7aera
	 NXH69onk8IflA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73F70C4167B
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167086628745.23232.14956643865021514474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84fb7cb960419f47645908a7fc4fd9e2d3dbb310c4dc0a9309228fe97344798
Date: Mon, 12 Dec 2022 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670866287
