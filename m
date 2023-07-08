Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8177E53B5
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 13:17:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19D2C433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 13:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688822228;
	bh=GYTyx/flYB1Pw7UO8KEiW9T/5WCjBIjcLMmxglDPl7g=;
	h=To:Subject:From:Date:From;
	b=Vz2sDtVCm4njsO21Hagxl9ksseuD2cSqgSRZLRrKPvRrvdoo1K4tvijwFZnsn4+bv
	 prQgPVmg9EEOiN0VPAE7Xa0Y9e+2aJAc4OSD2NZ04vLwlRGUSzhL8FsYKyKVV0MoOj
	 +j4vHLA+Fvf+okiwTYzKNZAp5YAKrkPN9+ZoSvlR+SFDGK1da4V/6QC7BQLU0kdQyT
	 b01mA61sQFGolTSF6Y9sJQLjjyitSmhc1rjwdDhy2okpvyi8wk7kXlGe2wmtGyg91l
	 vhxvjodydtQj4LxjQBuVhY0hsftASkqltQOQ9flHqQsCPF3Tqr1ltjplRUysMJq5lI
	 eyRsUEnVHPgsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78F8EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 13:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168882222867.22412.3367032270095759064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75cdec897e94789d9ed3adffb2e91d1a067060f6de973db8ddce3ac96f6ca90a
Date: Sat, 08 Jul 2023 13:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688822228
