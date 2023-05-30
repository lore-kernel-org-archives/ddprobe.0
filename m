Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36ABEA3D
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 02:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCDD7C433D2
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 02:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685413325;
	bh=noKtiiMrZ5V9fDSAgfsneBFiVTKTWZDNT++oxcGoL2o=;
	h=To:Subject:From:Date:From;
	b=HlVjKUZIv/KJrKlkXrezMOJg+1Mf+MNhCtlwJsbG5SNHBtUnN0D3X9oZNxL6Ylewl
	 S1GQv7i1Sx5djN1Nn1P7R0b+usIePljuNFVWhPKPraI6Coa8qM5pKU4lckSrz95tpW
	 k5LW3alen5F+sqEdWeiv939rEXMBtrJBfFyrcB7KGbU/cEpO0q2vPUAkjb1DeyPHjX
	 jXIFz0tjJtrO0X4lRcLJ8j535CaLXLF/AkDk+PYnotj2HEOIlu7iYDAQ+8S7iNAxsN
	 ViUgfpc2/nw2UMeck8U/PgRoFS5/YYORAGxRAFsMtis/TfNQC9ncT7Uy2Ja1NBIYjk
	 k/t17b2IlBBnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA66EC7EE23
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 02:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168541332575.20936.3126329662528346794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5362dba1db8a423c2ff24748577ec0df151c2d5e8525bb8275382840a77916c3
Date: Tue, 30 May 2023 02:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685413325
