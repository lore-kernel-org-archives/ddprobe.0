Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF8317C2
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 03:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71BB1C43470
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 03:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667965854;
	bh=R5EzzAargm9r3Dk222WA6tywaJtNUPOBX2hxpjOPeEU=;
	h=To:Subject:From:Date:From;
	b=AYCSd9kQBMVtGw/0pKtxCQVK43UzVUnSdjETMRiMUbtmJngRiF2NeQvvwT3mqLmqP
	 X8R4I3zBuR4/X3QKczmtVcJPNuA6KSRBv+WJmqMFOMvkoPERDCs4zlr9bd3DH0dzfK
	 jSeX/Jl1vhA21nZ1J3tX25oBfsj2lqlNQGZ3gZYVAyI1daEJyWKD+VuOQhFZzLqnsr
	 njszmf+AGWoMXJUT+vgZEUsymugr4usmCGUQpA9IdDm3v+jMV4aCnwrhrA54cDMRTC
	 4wiVvPd7NfrDXgW6k9roMqnudic18cxte0/a2TPM5whO+essSC0l8fCj+foynwhTRn
	 +XRa/oQCPpLXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5357BC43217
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 03:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166796585433.10228.10296999414954770280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82935f53ef4dcbc2bad30ce7aab7832c8ebe329aa510871a1718e92ea6bace2f
Date: Wed, 09 Nov 2022 03:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667965854
