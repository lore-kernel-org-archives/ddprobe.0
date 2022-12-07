Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEBD933E7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 21:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77F54C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670446854;
	bh=6/ig8FuZAyVTsREhIaRbgBuCYe1HDl5vwYCLvzcHFoQ=;
	h=To:Subject:From:Date:From;
	b=fD88e8s1CVozJ0v49HeCa29+SyWG3ZRvyC2Ljkb6CV68hd4ms61eZPbO36V8BWtDv
	 SttTJw6HuC2ZQtpFnpdSCqMMYMKSvz374002X2XfdFSpzQK+RxolvfIEZrmcFmynFS
	 +GNW1QhGUgvG8rejePjYD/a7VzrLgecwZ9fw7/eEfFqt3axNYgs4y/Ijcwt9mrmG41
	 VP8Xwx1N7moY0Qw4G2XvKMImv6xI67HqGSX0/qzB2l0MlW3ST0QhteTsQylCrDM/Mr
	 vFzxD3A3QW/RemUqal/1Id78EXN3hvPGkc7ttqxYh8MLVXMhuzviY9ORwgG2iaYaxT
	 bYpxQwqA39jrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AFC1C4708D
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 21:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167044685434.23735.6074592999935694334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6e73d05ff34b326fef2af8c49ba8612883eaa29c02ab27dcca5128cd556b22e
Date: Wed, 07 Dec 2022 21:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670446854
