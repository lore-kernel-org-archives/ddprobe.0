Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D50427E
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77E7FC433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665238853;
	bh=4dmDg72siyjeBresCGrdu4at65RI4KUA29K/XZOB+fo=;
	h=To:Subject:From:Date:From;
	b=hue5zBJEoO5LWRVE/ZyYD+J5WBwVF/MGCQuDKj/0sxzJni0HPL/vSEYIabFW2Tr1D
	 VdV8y1gI92dCM1Miydi3NUU5Tx3p6jPuAnDupN/8CfsMTUyc0rHeV2dT6o2zrs4HaB
	 h0XWLd2OnClbFunGCJPpUOXy8v9RLU+D4Tl1xRwXV/H7ocT5lPMyn80/QklJ4X52DJ
	 uDqh2mZUwWt2gZEcbUge3ol8h7u8+vYp2FjcTiKkVvKek6vo2z+TUWF6cq4aq2jk0H
	 7hBNOTtwX1M90ji/YrhkFX/N07TH0Gp1S3fLoHf02CJ+hbsmmYpa43mlW0oTLy9db2
	 mx5cQX9R02q9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CB5BC433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166523885334.7963.13281384582076782869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76cf9b9a041a9f412ed2f7db4e306f5e45697a487f3105f4743cfffd70ed4dfa
Date: Sat, 08 Oct 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665238853
