Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF02A8498
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 23:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E281C433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 23:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668468654;
	bh=7B0hXwOP/cyvIe45hoZGp4SKNjECDgKMF8SFcYR4Qy4=;
	h=To:Subject:From:Date:From;
	b=o4dw68zrJ+IHn1fJPPpV2EnDbyLoADrDyIIIAan+vneYfHlgAQG8PqRe+5POslB5r
	 K8+xhBbQwRUkK+WQ3RcvGj20tWee+2Np1dnczH2o/+39yguTIZR2S5lj9XlxebDsSu
	 2L2bSrhHEkO7Cat/pugsAl7IFjD19lRZzPPsXFA7bXuAVdlkiYDoJYTqOyePpPyZYe
	 XJHxVvtkbM1QC8Zm3pkxE+/elIF5sjVlxlhbARqgCPkkn6IlPsRfzgaf74vo3UlNRf
	 Su79venpXRrDJ74m6KCtIe40dK8oSUeniiuNY/6OZistdIcWQ9VVHlzkEE2dIrx1w0
	 3BJ+uCw0Q3sCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54658C433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 23:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166846865433.30289.236747407118503818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f9f32fe4b1fcd1b0153f57f15ee8e588ebbfb77f1788938ced7c25d76fd57ec
Date: Mon, 14 Nov 2022 23:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668468654
