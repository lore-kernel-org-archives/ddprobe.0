Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2BC4699
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F88CC433D7
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666026653;
	bh=AZ03tCl6vJuH9yeeNm+5Q7neQlIkjk8CoYhjDiaSB2Y=;
	h=To:Subject:From:Date:From;
	b=b5MpgnvEio/XH+qZwxDM+k99umBAdCI6Whm8Cx24dON1Ld8q3V9pcKgohFx3sA+ft
	 q4tR7We3uVD0joHWeE7hzghYvTgLUXfx32kByViPKZl1r+oJJj/PGniYPFEtM9vCTN
	 XFial8T1LgepfOBwfL6zNcTXC+DvdLJj5B35MKg3sUrBrGVlEISWCJfm7AClA8jlOI
	 Jxs7r3SAqaA26yCSaIfT59vs29uuXVmmFOJ6OP4i+6w64Anfr7KFMWFTzwnB7R2Wgv
	 VM7woPSU+x9W4vAALt3zAR/xQClowDPjp0PX7Dk/doEVQc4L4LhETNGqSY6bqeSHeP
	 Jc7CeiEO6dlww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B0DC433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166602665333.9235.3159834531590062326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51c4d755b1771e47570e430db0a51dd20ce2d0085a95a4f9910045b7d4d2f003
Date: Mon, 17 Oct 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666026653
