Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71A4362
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70431C433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666497653;
	bh=B3LmV5GNjT3dv7b9cf13tD/jZI76e3P1disVD38MHz8=;
	h=To:Subject:From:Date:From;
	b=PEoFKoo6SxBd3hGZdlh2/TKrlbyZedrxwbnycYuz3+hrTAmSyLTqaltDPXzDgPNtB
	 aLyHfEFkRy9vdkcLHqGeG2PnhNzpF1qFrvEsh4Ry2xg4bZv5odK9iG6URMEuz4qYMh
	 20SIf0Rmrh/Nvqpvpv9aNV0p/i+G7M18RvzJe64uD+gwxYxgn4m/KPgMhbt1DYR8cA
	 It30t/VpNMmNsczwgkpMowvR4c5qa2h9qFY2tdsUcrpTKeBchQ8YLy4lOEn0GsckQ7
	 dpN3XXHCjl2DbigogMTkImrIgO6sW0TLZL714v9BKA3i8cSzoaZ1I/zevpxUOC8TD7
	 BpqYVfe2Y3C+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 571EEECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166649765334.19235.6146783572297917059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a130349fa2c4b410e4e45ce1ec4edc1bf908a39da1100da011b19d7744601707
Date: Sun, 23 Oct 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666497653
