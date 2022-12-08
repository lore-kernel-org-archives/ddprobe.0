Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C745C36F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F52FC433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670481054;
	bh=JCGroc/h83L9iXs/ZAi9BT672kDN1YdE+vwpVIUTumk=;
	h=To:Subject:From:Date:From;
	b=TK870mUhea0QRB82iGnxJyqIAbzqeCPcMBElbGqMxt0riuS3d5RZEFkUuEI+5P+Q9
	 JcDB/Rgl2a7V5iLPJ7zO590EIPRDh4qxxVIo0iPjuP/ZK0eP4WHYoGOCKbBHhNawnF
	 e3/9D93ijG8AqGZRe304u6RKgsZqjWaIRBckYFFaIFJP8h1FU6X92C9/EiQ3FTejOc
	 mr3OxKds5K3do5fr8EthM+tXY4doNbF0CGQr2aZnOWQUMDwsE8INK4TKisWfozgs6U
	 9AM8JfD4F889yo0eG/8qiqxryxygXn2KLAWlpTf10U1Tq7r83JhDfzadx6Vv2nEOuF
	 0nGaGlGjJIFWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57FD9C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167048105434.26208.8347402985989553089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 562f8dc7ac31aadb0e3cb711cc9ca04a6259b62291dde7cffebf736b5d6caceb
Date: Thu, 08 Dec 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670481054
