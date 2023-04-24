Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A097C
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 13:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6451C433D2
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 13:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682342525;
	bh=Tq3Mi4wYM9mVKHazPGRA9l1eY86Hp5827CqgyPsIqYM=;
	h=To:Subject:From:Date:From;
	b=CjQtNGHclI4h/sRwcAM5+vcrz1UrlDnnUBDIR5ZKBOZVfjdFrod/2RqrfMkkwXcoA
	 SHjOiEBqqj/bZiOUIgf1YpkrotVok8MUMKBsSsa+xGopAw58zTnUygEbnVTVLSYXd9
	 6Ycwj4fyxAZP+yjtCdWUavZN/GTPnYS12txVPoWaOzi2J0T1rETnRIvwjlZts3N1Pc
	 L1ex9Cn1cdFP5NjgYxZZTBfkQmEWcDlBbs15KjRWr1QLa4HUDofAIBq6D63ys8RFDz
	 y06X1JtoLWfm4e/CrFbAS20R0ffQbEzeK8ihJqwq+Q6d+YTIjl+jEaaieS9JC3RBFa
	 gbNiysltgyJ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9AEDC77B61
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 13:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168234252575.27725.11699794966285929447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 663bbe6f144ef048cb3e280deb13964ca7cc86fbd3bd879f4992d81d7da2e079
Date: Mon, 24 Apr 2023 13:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682342525
