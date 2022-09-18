Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C646280C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75BA5C433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663508453;
	bh=ji5HJhAwyavMMPlZfiIh8LYT2gR4U/Oo5ITDyRsFpqc=;
	h=To:Subject:From:Date:From;
	b=JbsEzdZbiLFyb3zM0b9C8fqYqyXo8oOre6ZiXbgg1sKQDAKI9xzeeBzrDfgUklsbE
	 K0VaaVdBMe/ZYVMHicoVnbCy+Qnb1bgP95pawWar+Bh2sl8p2KG6KIpPp38hcKowNp
	 Gaa6ASk501/wf/iOf4O1Va/0ePd4EWmKvQKNbfY/LMl48/3Q0+qphlQ5xB2TOmbz1o
	 GJAumg/kPRP/1D3HlTLcHDBC1z9rSiutGCfvtaBAW8EtAuaTlHgvowJohIKN+zML2r
	 R0zaiu/+beaEkprk+RDIChhuWDQotWxwin7/b2TPhaNDQNCm5JPj5jQKWYz1k7J9AD
	 GX/FOWV0JZEFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5729CC32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166350845333.5333.7878392991887230847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e689fa47fd86f761216b041c2c541e3520a6c3c222b554b4f1250030c86027
Date: Sun, 18 Sep 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663508453
