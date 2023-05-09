Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D7E17ACF
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 13:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04840C433D2
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 13:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683640266;
	bh=xs60Kwg0RgeP0ehKsDNQ1zrwJZdWkQ5ssXL9bv9hxzw=;
	h=To:Subject:From:Date:From;
	b=VrbVkdhUlOyZBe0N4j363BjodNczBzF7lVSfMx1/NvOWFgtNqsaoSPyiMoXFN4639
	 9P3Vp1ymg5hDRN32S5T/MIRAC/s638Ni3rPdblWv0IJXaiHOiI0HMLiSG2AWZYhWFA
	 Gi9Md2DVXqb/HAd7JxhLyOFGFakMQ9R6XLKaFP+RnMtBBPahpd+b/z9BVpiPOYc/1A
	 oy8ca40BAmwzMrJ//073QGRV1Kbh9byHVI5bv1nynYl73gHepmmqDjsraA+S4PlLe4
	 oYdPn3/remDdJWxepZvre80TiAv1O1KeQaZUyeRSiQfIZgGTF88JYJgt0upJfWpyu7
	 U4+3cKTibyUxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5DB9C7EE22
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 13:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168364026586.13572.17023945472617527330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ade28a9a25e73c574fbf73ad9f2c2677a45a93794b79014ec8ac8104f50cebca
Date: Tue, 09 May 2023 13:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683640265
