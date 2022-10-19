Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52B823A7
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DE22C433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666158053;
	bh=hxzQgggysTPzM5cpHXMOtua3OcXs1+tVXE2BZSpnjFE=;
	h=To:Subject:From:Date:From;
	b=sffaEcAkoxsMT9ixFgH3kJxd5adediPqLfx8lAb3QFY82cfy3C2KzhxnR07gBPo/u
	 D+h2iMs9s5RAIwriVV10N5JrxViP0JmPF1eBJSxPZ1EzRzItdUPnyzkGbiTG5StdYK
	 aRozTJ1kCott37DYy+1nfR39/9S3OFt/LrrtKVzDrU4qmRMJdSFjGU+OtQEpa6Psrb
	 P0K2ctNPavJ/Rs4zSA5XHhaCAjz/wP2JwqMXBO87jp2jetuy5Zxpdw2E9h9cdgjXzR
	 P7i9DO26JhiRztBoNs2sxL7QPvqOmNtDD/AYi5XOPv1ObVRWLOOn+vnKJKC6ohbcnd
	 2PAVP9kW/yn8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51AAFC433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166615805332.21346.10868216814324757518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc31db8e06bb54d13f8f8c1a5c07d71eeda769190409c3b726729cb8f4ff231d
Date: Wed, 19 Oct 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666158053
