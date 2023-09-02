Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 778B6AD35
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 19:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12A4C433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 19:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693684448;
	bh=SnqGeADmjApYm+3m4UwXcvnyJOBAIJOwftJ4DFiuO58=;
	h=To:Subject:From:Date:From;
	b=gHGEAY+CV04p8HfI8BPBu00jAFK3cptN+w3y2gUIkkPieYMQ9U8Dn9NG1q1SaxBP0
	 HmmH5b1YCsBL5tORmg3zYLm1STc2Oyddt6LmiyFlb2iSO/6A81OAeIQCvy++upK2MP
	 o7K752pEUb4oDusxfcmVbTwF1wjTwbRSttO7X+grOr8VRiYCBURANjZy85DliSQ/in
	 gOuFnzhwOxL7rZBf/XmBa/iUJqDyUEz3MtRPSncOuOZU0eRX+GkkLRicPF3ulCbS1r
	 0B3DCR+w+g4NvktwzgnGVRPFgNSVt1MWVu+ERiF5NKpbGyuXICGW6G9NGwiq07mwqB
	 /OGyz/jfvrGnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F2CC001DB
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 19:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169368444870.1959.7535223518142749928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ab0a144d9d84c53724273907d7f61464771bfb982e5d1499dba836f745eddb
Date: Sat, 02 Sep 2023 19:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693684448
