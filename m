Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA02F23D4
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68D28C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669289454;
	bh=ADv9oG+VguejpyVA5VUblbtYjYjiEiP2exnVH5j3CCU=;
	h=To:Subject:From:Date:From;
	b=R76xkmkEj/RAcHwO7U9m8AyCZfiWqzkq+etNr6zo9jxpsGO779q0GFoYX+hPdGXiI
	 MAwHgZ2nwQP++b6GbvGA3DHTY0qlQDcwrxl/LxN1rDg3vjc3M4qWcZrJPgRrb+XLxt
	 gN6P1iDMjnCUNBp7QKkufJpQTHmVQsRufSfLfMDLYPlhcD3wItwl0n5tjKm/KEXBiG
	 OC4ULrorDg9pr6728bA8NgaIAUq69JEVDFV/yTLcjKOVesDvyWImBk1j+oaZkvpQoO
	 xnCA/fkutR1GXDPwEyEWCzLh7EqrembwpgbCXntpQITMWUvS6EHkE3GgElMBiu9L1w
	 mabxIugCNK0qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC61C433FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166928945431.25099.3890483974535047420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c281544e12ed60afa6ca5dc3f559cc83410481d8b4360355db8e8066e471c658
Date: Thu, 24 Nov 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669289454
