Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA6913C35
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 668BFC433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662373253;
	bh=VM2Rgqh+MsV0/YvJ5jaSCov5RDX7hcRhq9buXE3xfsU=;
	h=To:Subject:From:Date:From;
	b=tV9REaSy9oH7Uo/gmVraLsw0Mcpp6TJrJkAuGftQRV7VBHq0S6vwKhbxLDFSEy8Z/
	 17Wm9EwWkzYEEh6LN08c3s6Ybobi5oZ6FeLo96DVy7F0c0BW5Id6QXE5btl41f4DPg
	 xolAkQJrkZMHmNpcYXYxBNXT36GX6ksZvVC76XoBGujAfLGEzJ1p6uuofAaWPI92HG
	 xWjQFWiYIet0j0aIe93qHkHofDfoFRc0Dp00AvcOnVCWzJOEupCJLUlARsTxWaKonr
	 PypjB9KYnn+YEL+RA3BddRz3NDyKgmuNBPlwXDf60uEpM7cRpAr/fqvQN8e8y5wfRG
	 nYEqYIDxtRhFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EA7FECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166237325331.11804.4519541226541980525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb83bea5c180a9315695c552021f00d637346bf8b4761fb7e5004972bfdbdc8
Date: Mon, 05 Sep 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662373253
