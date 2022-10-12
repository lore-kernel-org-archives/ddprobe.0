Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9FB0612F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70EC8C433D7
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665616853;
	bh=Ac5Z5qtet1Z5YLyr3unD6dQcWAE6G0eJBNAuMkJS+HA=;
	h=To:Subject:From:Date:From;
	b=LdX/0HSu6joVyNKcfiJ0YnfStKL8qc37ovrRAGJutEsgZPxo2q5gVPw2Ls4iD5yby
	 u1+DBYj8D73Oy46SBPQImpINtNEH9BOvQLtO7Q5XAhjN05NUsNCLv2bd3K0YbNm19B
	 vBQAJcPolHkzYVu7dR9nbL8+cHn+IamNQr8Zyo18ow1WtMM6X6creW0Ka98AWtgnrG
	 BRQFS6Cs+Yv4yBDVTm/+83BP78Zb2dfHeoBtTIayFfTbecC+kjcYb70vr3deCn2v4v
	 +qU3WCQ4wOfpZBdzCQmJeO32M9G0yPnCBN2A2o26Fst4iFUZl8Bm1XWPtw9GjU1D1N
	 5/JcGBgtb78Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56081C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166561685334.10529.9975364514431105056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff9e831497e8f9066182361afd079c87a910693916b15a77ee86053309958229
Date: Wed, 12 Oct 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665616853
