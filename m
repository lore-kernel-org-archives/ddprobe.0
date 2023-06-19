Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5793D171A1
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 16:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02D4C433C8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 16:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687192328;
	bh=Oq/FjvvmBq60m+UbOAlh0RwZ11YRlvAsnd9E2XmfhcQ=;
	h=To:Subject:From:Date:From;
	b=k5ZyfDDmgaRNHd+FpBaBYrUHbI3fOFbbMrhIBnXVLawPzIh5aMQj6Adxd/Ng2LzV1
	 GNHtcMmo7qeyBahMeIjo5a9ARcszGGOsx+gDJZLuy4owFX1QO85SnG1K7eNBUoXXT7
	 5M0mdFlCioecGRPLhFjByTnKeDohzJ+Y9D+Tc6pZICKvEotPaP5WPEzcRe8W+vFNSs
	 vBXnqrk1i2EppTVfgHZ+1pnDtLpZG7Leck8TmPN+9iG0cK5FA5z9zhHPryb0HcmQLv
	 D/lLsvXwQlTIXimS5p3y+aBmN3EbT4lA4ZMOu5kJywmpNMBRL40pdnnJrntnuVqjz1
	 +Og3z9IztxSbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3107EB64DA
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 16:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168719232872.5737.14653711827658986426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c68178edbdc0c81504f096fc7c96c5d157d771fc29827f1ed25acbbc4e37058
Date: Mon, 19 Jun 2023 16:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687192328
