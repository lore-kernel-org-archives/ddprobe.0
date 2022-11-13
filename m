Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD3626FC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 20:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74145C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668370854;
	bh=YpHXCqvtKVRNyDhtJHKsxrhidAIMBeKQj7xA4F6km0I=;
	h=To:Subject:From:Date:From;
	b=BQ2mEfixLc5v23GQ+zDDJ8un8513CkHBPzgLdavWWRJ7Q1SdhW+BBpusOGJ1XOGCk
	 fRQDCCLTPr3ytsCZSI6lc3HA8ygwSbJyae+OWe+AsEB66ndY5b7viZNxeGO9HeOKp3
	 1kJKoS/RrbTuvokEeA5AuQd0MWCMXO34GJnhPxZ6F0EvsS5VvTiBg3aKT1tlhpCiXX
	 unesZyHWgeosvAcVpTjsERjKlGvaUPUYknREJ3pTHOjCROtw2SKqs7GIFT/XFn3ZrE
	 ozQe3pq9oVu9OXmpiHjYDvq86D14iddpiNxhLhGAutcfOGyRDGB/r5/pMUJv22FxeJ
	 CUGjjzq9Nb/lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57F18C433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 20:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166837085432.1338.7884892039593758730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9726a0efc66beeac17a7ffbbc33ef973cebda910e8af53b533810ec6d72440d7
Date: Sun, 13 Nov 2022 20:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668370854
