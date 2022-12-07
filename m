Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED84C136D
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 09:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 925C0C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670403654;
	bh=zyAdZv5eADEyyG/EMfWK1tJcyRNZMvDCup7OOKriWQI=;
	h=To:Subject:From:Date:From;
	b=UsTZV8akkTYHJNQv7NIfCPhoAhD0hLy/ETnnWnhVZ82ePFAvKzIFGBIUDu2NkXMZr
	 6KN8I528bB1atVw3jIdo7dNH/GtcNH0LpTVQ7cFDI7DPr1t+FOiecCluqbcHZXQg0i
	 CRVFVpPCxQ8SH06+4YoBRdqsvHOM51/V++Bj0d6KaY3kydCwiqiqEGrH7RSK8UVJ6d
	 exjaVeaP56QFY6WyMYYZeIxsEhQaOjINcg1gafLzgXh7NLmvcjVhcmwvLhZslKP16/
	 24xf8Cl81fJeOio/XQrvKoZ4KYqUQPrf1navouE1DHOR2fVB2b4sxe6pUmSRu++bzw
	 l0XoTwx7hxkng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76589C47089
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 09:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167040365446.12510.13058964635003986443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d588355c727e5a6f4e83d4bc89d78a4a27f7352ae533a92043c6d2d743ce56b
Date: Wed, 07 Dec 2022 09:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670403654
