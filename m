Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625B83B7A0
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 14:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3824C433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 14:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695134708;
	bh=Fh0eSgecyH2GYCow4pqzy/RwOBlMZJwAlDx2xrzFOuU=;
	h=To:Subject:From:Date:From;
	b=LPB/Lzck5lGPE6Hq8gWaZg6Qncu2DlvUohzCApWoTM6iyYmWyhkoh57sjOYWC2FsJ
	 WrY1dYlOFN1NDrkoEe925XE21qky9I33ha0vuMKpe5KNtj+dLt9WDU9FY0lIdu0CHj
	 B+qT9KE9v56LVSgq3kGg2wkpUtXbCGUaSNAQe6XngjucwR11P4JPWD0QIXA+DRp3pn
	 9i18kQdrxkn6kpxcHgsxowbMioMYhtFME7uSIrtuZJkcvJfpiBr7U36f4znMUtLi4z
	 raRdJ52OY7HenZWNAB8o2h23THKsY1WSyvvI30lxTh3Lt361r0rvMOgk8mEt7rgyfR
	 poYOwspCmGAQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F15CD5BCE
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 14:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169513470866.18156.17052308419093758108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdf04f94bb6f4e38643eda9f0a4830e2ca49e895df5854c89b18e17230aff773
Date: Tue, 19 Sep 2023 14:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695134708
