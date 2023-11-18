Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5764F101D0
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFpeiTVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 935CDC433C8
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700291896;
	bh=pADC19tCOD/3nTftXYLiE3UsVX/00S9Z8LVH9fOcCjQ=;
	h=To:Subject:From:Date:From;
	b=jFpeiTVtpgKENlovPhjjVAywJDbdTAUEuyX3MRdWEpQAgG5dOpf3Ri0oArc4z+v5B
	 KaSXwD2sEOpmuqRuv8z+f0WdnwQ3ZLbhWg3szOwgyJb0YFC0Jn+Sjns3pvNs1gJzIo
	 gVuNOamitzI9Zswy3XDmWbV0FleDTDaqUHeiJbefwuxLAHeSgtwh50V1wb6FyoCpQ5
	 e3FQfU6UXl/inWM3x3XDvbu1QEZ8/HV4ToMt3ye4PlQcsIBkdKNFZoqFlpyb0WKs/q
	 b/jCoBH/cDMG0d6lWLI65Ld3vQ+WXFqxWJVzPncdvtoj5Sl0CNzfzyifUmq8qvojHv
	 qpajdGvUnyBiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76D64C2BB3F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170029189644.29989.16949299313364712495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffe957c5f27a79d3832a79111addb2334536f7f28ddb250fe236450ae94ea13a
Date: Sat, 18 Nov 2023 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700291896
