Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A386A17E9
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 20:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 14605C433C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 20:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692219189;
	bh=mRL7rqlXAfGEmCJPoEY71UTPqLwMp2/R1RPPqv21Dcs=;
	h=To:Subject:From:Date:From;
	b=lLQQGY/EO+6vj2+c08HGQeFZmLSxG1GX+sgEGGMYFbZdfk3CRuhcN2R4kXms9nQHL
	 q8owvh27uvSXcsGCIF9NBL8MIdcWhYJrDReyLVXSlY4uWHCPZXEfbiQR5u6/0/ls0C
	 dz7MvWpQMulWcJAGz7WMMUhALX1z/abgTYQfXv/FLpqa++AHhKQ5GXElQw3vHh546a
	 duUWgaBF06tN2/vAq+rEWzHGTee4fTqFPYuK0n5aLxtI5/f4k0G+0/kTqDj2A1HJ4G
	 W445GWwkmMfWyAV1LDHvV5d+FfbVBa6RF7l00x/M11GPjIWWg4T8A+KpYyrH98SKuj
	 VnnSEFCH5Ed1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5533C27C41
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 20:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169221918893.14911.11617387654917769291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbf7285d60cd5ce89b39053d0707dc88820d2d25d9e84dfe25ca84ce5c4ad4ac
Date: Wed, 16 Aug 2023 20:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692219188
