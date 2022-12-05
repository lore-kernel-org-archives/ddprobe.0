Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17C5192
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 03:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C208C433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 03:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670209254;
	bh=tPPT/QuOsmBTM2qkwteBcnVfNn1GsbMiejR/sq19Bks=;
	h=To:Subject:From:Date:From;
	b=glKT3Oy6IH1orBha5xSJj1JhGo2v77PcGH2ITzDkMp8/x/PCDXplfqUfXmSU/0k4t
	 dKtQ8HnV3cxk1+umci6ZDhNAu5XsuQr5K7lfThXU6YoUGPXmesU0AMCFnosQL8c4wr
	 a85MblArjpPs/sFXnZ6+iTMKhuRTQiui2opLDyK/ts+7CVV+MKjYzaBnEAu9BousAe
	 a12kan7NyWmmMS85D603Sr260UYek/jDxMTOXVDGom9e+KnXiz94zfRxe6GyrS8UHq
	 la+N4IJmLHxF2GD9bcfNorHd7XtljW/tCLn+d/9kBSpBCPg+2Guo7lsvxyXwFEgngP
	 U7kGaDG989/Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B56C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 03:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167020925433.5559.10561270945229324156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1498f5f2931e53d1cda21eefa0f0c519a40769d4085b2198543049cb075ba440
Date: Mon, 05 Dec 2022 03:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670209254
