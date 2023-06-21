Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560121C75F
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 23:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C600CC433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 23:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687389788;
	bh=dojcigQSllAukDlp1i/s/lsEgAoGK23FQg+PbCIZ6lc=;
	h=To:Subject:From:Date:From;
	b=FC8wCGMY2R+JcIAvN02Rr72DgMjtxrAFIWHnHeV/vI/TU0XVr9ykMSEhiAFoL4P8J
	 QH28YxQ/NBkuMsU0PFpmfJJrnl2OeFnNHYRvbJVwrhTwVHff6eLGEawTHFqlYKndLZ
	 zlhSq7yJC4VXbp6G2N2Cgqfd0foUTgWEtQWJnNZYTve3IKfus3Pi/jbxwydYyEBBsO
	 AMtH8DPGEMNM9yKP2LF+v2bGiEZoF7BO76S4JjLyAZIi3oIntCA7nMQtCzg36t5nYn
	 qIrIbozbpjfoS1yBD9Vel0yNWzkE2QvALazPAwuNdxo2SWoVCdw6qGQoKEMZiv8FFc
	 ysw0ZUR1k79Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE12EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 23:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168738978870.15111.14164104151333789728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56905bef2924a4f9f22d3705dbc3ec38eba40dec50a6bec6fc23dbee41ab5aa0
Date: Wed, 21 Jun 2023 23:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687389788
