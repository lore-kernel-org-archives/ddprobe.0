Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4F917C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 00:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4896C433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 00:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688171588;
	bh=4buhdBRhV8DmWUTNz9b1v8IQfc8r1TVPoRTxfXuUhFs=;
	h=To:Subject:From:Date:From;
	b=EPkofJCf8S0BHgCsJg8N3xf2U94d3s+KDJr4oe3QFY9JBVLG7Dt0fKmhrClnx9lq0
	 MGKCyOZy6ltQG1n6jCKF+NlLirc7ZKSLd1OGXFr8+HDp2Oa5y8KUevLpYJLdLKpKC1
	 GhtRhskhefYCgIbd32Sy3SKr+iBwIokNWBvkftuSpIxL68OICM6eJWVXO1BIVrRlim
	 fKGeFQh2cYXsu6M1xvOCJjolGzYa7p0AMb6w5n8MR5dsZFLpXj7DbpzKn133yyzHff
	 vhUAyAFoYcMQLItxdqTvjynNu7mjntYjdrkI2W6WNugWmUCaSDO1VHRD81hi7A44VW
	 MJOvsD80EMz5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C2BEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 00:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168817158867.14926.10663907730224401572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac531fada2406db7ae9fee08cfe3fb3fb9cba1e9e3b8f977a837c8d4c0e40e63
Date: Sat, 01 Jul 2023 00:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688171588
