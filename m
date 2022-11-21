Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B65A7EC1F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 21:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EF81C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 21:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669065054;
	bh=9htZeiv/8U0LTL1opB+yFPdI8E3EX9LT+g8A4M+Sn2U=;
	h=To:Subject:From:Date:From;
	b=mkAMKPv0ZKFD6VFVNwHoPLuKXvvPa4BHkdc0lf9dom8J8ynR0cBc3/H6BAW2UiTh9
	 D5/u9Hp5ASoyz6RCcgrTYvASLh5QBieuqlUGOrlOPH2Rmk2mCVvCubXk6K5SGPkSxe
	 F/JYX/cnkegAEtypnkiAyIMbcXumOJ3dpVUDHCJh2yo4a8EiNdsknM+0SzzPnwgIhr
	 dFqa6Q/+ariN3457TpcObeobdNTnWmPCT+ymXdKYKRAP6TwHik6td1lyMfEFgeJyoI
	 iinjuge2v8XwRYcFd92rYZgkzBqRf5JRf6tH3fPHS4UALl7vJ111hQlKrlR/aKgg2R
	 HIcXpDV8RS1pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 571ECC433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 21:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166906505434.702.10905397341512745814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05258571f1d801406f03a61383bc577126bb93c8761db2e1dcef0e44acfaee58
Date: Mon, 21 Nov 2022 21:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669065054
