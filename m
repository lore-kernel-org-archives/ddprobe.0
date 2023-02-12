Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B24B6FBC
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 22:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD66C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 22:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676239445;
	bh=sFoFA+7dBwjGhm48l69r12UgO+u8NFdYFonoyC+xwlM=;
	h=To:Subject:From:Date:From;
	b=HDcHN4u6ls5VmSV9heMk2jv8Tc8P4xWcOM/cgPfaAEi3jA9wV93cILAziG+1hvdAX
	 wAjMvaSqA27OCuon9nB5f07cfYQHN9gS2J1db3hjVqJcNN+Bit2k7Q10kgT9gGIxWJ
	 2k03nCKnhjq4nu3fkAwV0QsliD6JWHJFPQ8MDfCFhB1mSli9Iq7LRuRXR2PfPLS9rd
	 vAA3y3diwfFsIGUSL2oT/Jqram+ddvAjjD6X4akabf/cCqaMreKAv3Z3guALeTsHDh
	 Zh93nB1QZvy3FSdEdk3cjI7ZxG6tsGCjQYxH91kc3oNKAzVbWPG/rmFG7LCCuI8WRF
	 QNFjmbWgOEbRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBAC9C05027
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 22:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167623944574.17647.16845602070334507789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dc6cde569f4c8078d37716ef41b018c985fbc81d2c77a70629e8d33e893ad81
Date: Sun, 12 Feb 2023 22:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676239445
