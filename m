Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B48DF7C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70F71C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670244054;
	bh=FjAOrMIdFeLTW2eqsev5pGS/KRgkV5PCod5StYUv++E=;
	h=To:Subject:From:Date:From;
	b=UKctcRQUyZy12/DzksCqX/VCTKfrmAxvk/zs+C5fwaa2b6+QeUpued72ByGexH5+e
	 LlQhzLVnO1kmnIpcxgKhpt6Nl1Qi6+x3CDThnMHEkeSrfV2pzR2LCRapwLLVyYvL/D
	 AUoAS348Znphd1G5Zy8HlPhQ/mmdC4RSiVMvtEGtq2UvCdRH+LPZQSNs35lKlyvpUx
	 2Bkfon1JgP3rTSzLqtjxfOUGzZv1KTacjkYFNXOvy58B0T8hZ7IFfvShOGYPmhM8as
	 tG7JMbeyryeV5LSs388JCQVYIr/Y0M0pzrw49LKHqQSNE1OrIkN55kcEdxGAj+HgaW
	 7oVGNOif3Vhew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5738EC4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167024405434.28683.13941922972344149004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27c556e98b7b9522e6a644ad61280f9370f19ee98d2c797a181eb5ec3964e305
Date: Mon, 05 Dec 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670244054
