Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7BE1FA4
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C94EC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670417454;
	bh=8d5TCzeL9B5zVB9oQp27X4FK3foJ3IPYzS/co/iJjHc=;
	h=To:Subject:From:Date:From;
	b=FWAs4G7F3sPflkF179oSnxdNRnoYbPdoWeMzbRgL+2Jnd9BQQOVk1KTc76KQjUtaq
	 9XZ8od/h3mkSfCIYzSaa5MetiTwicJ3Cbn/KEkzADSoH0CA46rAtU1gp0qp3OJDK7/
	 ftXrCfy3x3yUjfWsEGSZCrQ9XZoIkVe5XPLqhkcUsfxx2nzx/DsQO2k2HpngtfPfL8
	 Uff8ivxzuzwGl10ULLI9r7Suv+PXDjnUYnv7CsYk73dD/+jky/cWpio4jidhSqtjaK
	 14L8LPMos2q8p9l0DdEBZxP50NQiXLqKhk3DqdSCaEG/id9SaVAZSWRCH4qqLrxufv
	 cKvCfPr7pPQSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5201FC4708E
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167041745432.11317.17225711991741323676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c584db8bcd0d31c90daab7449bca8b8b9d17550343287c0b0933bf0c4d8414f3
Date: Wed, 07 Dec 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670417454
