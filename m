Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8C1F1841
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 776ACC433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664591453;
	bh=T1SZ8sVOZ0DnVaMqehJByngrdQeHS1yTOyi9WryumAE=;
	h=To:Subject:From:Date:From;
	b=WDSlFru70rE2nV++A4vd2mdF0G7xvrp8dyT98tPvcokzBJYVw0TPjZAgGfBswf3eh
	 UotwpHnykaMJlNfTNSmHA7Gtflwv3KijAvquK9CEzqQThWNCcdcNrXxgtZTlEVu01d
	 KM6pbcfc+hkaIJ15ZQ63unVBVH+1ZLCfkHPlDlm7v5WKJbns2/XqakIsLSPdpWC5dQ
	 ayBpr1VaxSAF7qvXJfsNXLA2YqrjNQ6nXVdnjwpPczGTIRj529qvjNWeO30r5hKdA0
	 9qUc8tj3N51KPEW/luzqpfEgN4H6sfPwQKcepOPvyvIGacEUcapE8scD/r0yKImD2E
	 B62kA1/Lt1EMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A9F2C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166459145334.4232.12623387966766922770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1eedc50631b1aef2341816dcb23b9d6aba8bb3041ca46702d619133c8d5bb80
Date: Sat, 01 Oct 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664591453
