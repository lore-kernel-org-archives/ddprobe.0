Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D8C6FD2
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 11:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9049C433C8
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 11:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690977128;
	bh=wPBrkBaOz7CevtCGxwA8YRZ26d1iI0njV5/bRIHreaw=;
	h=To:Subject:From:Date:From;
	b=BG9C2uikaOBKqULt+05z5pN/UhFgpvjw9rqhhZc8QrTkmfgbfXE0atzP5KOrHmcgI
	 P6/0pdBZhf22VKNDk8tresG6NEGlT2dLdwpr+2m3cDiBhP07cI27UQwxRbOpzFRxf1
	 9Vye8QCC8QqTrc+ZGt8nIbkpxzhEizl44CRdtVVpNkHCBHQf4ltqjM4y+UIiEWpM/v
	 vx64vMjG4Xhu7nF+F2v4ZT8hL/bpruaugiuE1ZR5jRE+8/pu1v3Q7c/RH8v63+iwLw
	 hi9S0Vys6SPOcyRu57PAL5n2bZ6PooM5jdxjWU0yKk8bEhzqMLA3zBgIqFUljoo8/d
	 3VNgPM5ZEFjzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA13CC00528
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 11:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169097712868.1731.6831997009610227079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cda0a0120622038fe7fdab00f8f01859af4c804476fe4d24d17995a225aba837
Date: Wed, 02 Aug 2023 11:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690977128
