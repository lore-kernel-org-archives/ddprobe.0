Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DFD51FB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 17:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 280DDC433D2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 17:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680976266;
	bh=RmQotex6Y/V21IK5efGvFmAuH6bkE3RbiK3tDiY4EoA=;
	h=To:Subject:From:Date:From;
	b=doSYy3TBxnJAYOF9N7LUBUisJSKwyM1BhzuLCXJ2lBYzdd+I3ZRoaEHOuPCYQSq/A
	 okOcEht42bsYooatGk8IDY8O23LDYcuBEY/XwpAmG3WALBk7Rs+E1GnPhxEHN39xbW
	 bblODHnKR+QeV+x2E60MwqZ4TV0r1uWFxi3wpuHiYVSlIV9xFfxtbFdZ5KZcY8rJqu
	 7tBQzO+9vqztNbgptZBBc3FHYMLtwYCtsgC+t7cOfVfXCwMydTOnK3ZSXP9MFJb+yO
	 L/vJbxQRX0KmhFvX/hJyF9mLKXfG6J91Wq7ntf1CBShxd0UEGtCDoV4YaNY5pSFSvN
	 f2LawUsP82qXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3859C77B6C
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 17:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168097626591.10090.8832332332820925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6c0db43025ddd75550bf48557277e29105974f49b2727ce925b342ce7586644
Date: Sat, 08 Apr 2023 17:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680976265
