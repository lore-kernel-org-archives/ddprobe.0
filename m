Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 816DD1B904
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 17:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBFA5C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 17:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686330366;
	bh=mVFwTtntGjihTVZ+eR5RIJptPoKcjdDpaUIQAHu+lpQ=;
	h=To:Subject:From:Date:From;
	b=Z/eFvDulVjO+RI/8+52lNJ5mvMBz+x0JDxwMIBOssobv7FIC/xm56StlWRklaeu7Q
	 8NcBOIURl1fdEV7ri3NhV2hRSu8kRUvDHUUTecN6JZKNz8wSUAnChtounn9FJqrrY6
	 Q8u8BAkwGe2S7gG7SAuM5jDk1YlEj86YFvuArceujlRuNi2pVRgb/nA8E4ot/DigGy
	 wJ4CVOxxRh8NAL2KmKffETa/VZxTvbQdsPGr71QLrxMEhfUc4JSrDRUivYb8goG3iU
	 VjDJESssobSXjKaVSIezAWs7sxjVw7Ay19FcfyAAx80gPRdD/d2EQyshrBqZszzrRW
	 hT60c27bgIgTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3AEEC7EE29
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 17:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168633036577.12855.9220624912122092840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a66c89605a5198dc077febc662b90b51663996a4242dc015af817313701c2b9
Date: Fri, 09 Jun 2023 17:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686330365
