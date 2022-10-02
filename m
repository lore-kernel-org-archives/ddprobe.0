Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C955F3D8A
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C2FCC433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664751653;
	bh=gXi8ytgx7T9QCcdFwBV7Om3Z5EQ0Bl9s5idwbIkhDhY=;
	h=To:Subject:From:Date:From;
	b=CvujMhiXArJNK717aPaoToj2qkcuMJE2vSOSpLSsX9GG7hwyfvBKxWtwUQavPzedh
	 wqgom/8czfxtC4iHNkJFOVzfG66nvWAgKC5BsD7MeYAbAz12/GYDRH0QZ0lsR/w8gF
	 I/k/UJMRPHeVt8E5ENi/cGi4myiE3VVkh9juyxadXCbIVYWVmv4OVqIJaj3H4VfPKp
	 Gjnr5bI3w7kdlfm3QygHbFKwQm9MO2dodBn05aaKiZB2FdVYnDh4CqgLcgS26PxFVB
	 BK7hB0Z0lTFJXwYWZCXRucEI2t+1RjS6WEj/ZuLRjQX2Aw6IcOJdX2vsQmaPRi+Zmc
	 oyNPTlAuAk3gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52218C433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166475165333.30869.5371136065555755537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e62b586639a9ddc5af37767cab94451462c07bf867f71da61b1361d48f4827f
Date: Sun, 02 Oct 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664751653
