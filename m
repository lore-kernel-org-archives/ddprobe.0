Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAFF123C7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DBDCC433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664537453;
	bh=JBQuOpJtFYF/OqD6ohTORAQ808sBiTh2Ae8x5VZ8ufE=;
	h=To:Subject:From:Date:From;
	b=XC/XNAMEMO/k3Sk63U+FdPFe0HfpUgAurmYKB42o9x2WSl+WUZH+J9bJPtHXlTZD4
	 2e2EfYemejnakCHG33nwRPSBGrJxxzSn1AP1a7U3o5QryhdMMBUeP3131bF/D94Xvc
	 f2jtDoyAC6KWhGaxr9kNK/0VomLhDCCDvxZkqrO8OXvPnxqx7E3czK3mQbajnts9Pu
	 t6HdPKvcJX5A1luqS8aTGKe92RdmKG/uvRwEenWaP+3ROq5+RqB8T43q4TecVpCJ0w
	 ZjXsEeOp/o4tS5RO9xMxeCqDibjc2A4ATaOFi6n16CrNBAJp4Nn6YEO0Sm+ACnT7zA
	 CQoCOn7PRrhmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55DABC433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166453745334.19807.13709134551936548309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f0c8fa752309f62d4c22763b266d4fb12a9e83a1b233c5e89656c5e3b65b7b8
Date: Fri, 30 Sep 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664537453
