Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C697039A
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BF42C433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666551653;
	bh=ub4UEETMcFZhqQqOiCq7l+stI6H3t6qwDx6BJLdvRAo=;
	h=To:Subject:From:Date:From;
	b=BPtyM/nK26KqRdbfV0lwYYuvXn1DwKO+H6siu1wptIUb74jiqrdVW48klmEWlQ7y6
	 Cqoa8Qi3pjrWdhXMBmKyNw2+j26TpBNKI4HD9iA7EGlSTXT/Ko8NNJxs/57/egPjo7
	 NrptoGqTaD7nuvCOc+fSpilmVpJk47rqJSz9jzG8mtYsTHOxv9wdLZCKWkYhDoy3aS
	 p2BDcRdT5XdEapd0JRVKhWMKAdesnkvyFkMjNKNZjtV2dN7CNwDU4iFL/2sNbBiq7E
	 PMPawo/VpWG6DqaIWJrQGwfRWHoDlSUjeWJhxVbDqanKz5qRBh4wsde4YA+7sOaQQD
	 j18X+SAt4aXBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6271BECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166655165334.10100.9290083339856837814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bf65dafef64165c52840226e5db0a5b08ae9b0c2668b1941c8f7fae6c98cc1f
Date: Sun, 23 Oct 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666551653
