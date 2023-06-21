Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5768419506
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 16:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D26C433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 16:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687363388;
	bh=wQePkcZHqidNcDzFYYVSiRo20P0dWh40BChcRXgfaZY=;
	h=To:Subject:From:Date:From;
	b=bkv2yS7kN810lVKfQm3UYZzVJZskF4yjwKRsxW93SrVHNhaPoS2dSHo6vyq+k/0/r
	 ZQJAdFUwhQfr3jMtdeCKZQu+9lHC2+oeG/XgMpqTfnnt6KHXeW5pr2blNucAbQzHMb
	 pcUgyhn/XyC2HUfdOFk5lMK5PT5rsm9WkUAQuK8tPG+1NCbjB9bkjX0NQe2xlprQOU
	 B74DHAxjBuJXp9tVLno1wZNyYxV7g1zisxFkytqDa9bf/x/TJ9Yu/97MrAdytXGOh+
	 Rn/ZeeeNg9nYwmA3uZobsz0LGQM7qJUtsPrU0AoMfzLS4QvYNfNceZGTWiIj6io77i
	 Qg+cRRn4R2z1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF44EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 16:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168736338872.7500.12954481464159917956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0713079d4259b7dd283e8e57dfa32d33697e25505d06dd15d2c61294c430790e
Date: Wed, 21 Jun 2023 16:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687363388
