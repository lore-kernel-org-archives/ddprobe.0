Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B3215A9
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82C6AC433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671672687;
	bh=rHtanRXSLBQAJhpKT2a7CBdpXGWYXQw+f0/NV6mmu7U=;
	h=To:Subject:From:Date:From;
	b=HmQ2saaeUYZ9V67gjUpBjEs83huJtfjy8dOqcN4q0orH2RwAei5QoVzKs+ub4HtUX
	 RpvrcwMumZ84XIRLRDd4JiT6fYyy34EBdy1uYLZQTDxaxGgLRuhbok0jJOb7BKnAXD
	 X9byp3Kwkl8mjId0Jp+UUyV9sbKiI5eHmnm+89s+iapfWNJ07T6L4MnzAwTmNw3fD+
	 7ncYObTwgQqP8kONFZQKzQASqALWBlxhx75w35DxQGx2BsNciR2i0uRFDrIf4llrJI
	 l+i/Zofc84H7kC7U/4SNl+oXyoKJqrnMFG/ZYD7DR9jfARRWXZypBF4B6vdUY33/pI
	 rcqsTuvA/OkQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AB8BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167167268742.11039.9332561707971388283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c391747b053f86dbdb2bd08dcc41e3bcb257a784c5927c5f25b7c2317857c342
Date: Thu, 22 Dec 2022 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671672687
