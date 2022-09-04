Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7A433E4
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EB61C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662317453;
	bh=OxtofosEb8GygIHSyI5CH+vzxTwZ/wA7I5I7lEzmVDk=;
	h=To:Subject:From:Date:From;
	b=rKq98EkbEAPVhp/5H5c74TPNl8odOjp1zXoKGufwYeto1O10XW8QRNQyW0/5Gzqaw
	 X6Rywp+/aCdG/rsBqgvDHmzVOrzoOXTgUv/Za+GojhxNwD0aiH0h4hjGXHrfPOmUeG
	 Ky9DtCOuQtrxcOY21YuVgVwVTSspANALGjjprat5PHBj3P95+kBUPC1VVzy5ohT0Hj
	 A+EFAxPU1xR1N2ZSZl+u4Bb/rmmFkVwNKdX4mGW4Tgbmrjey0GrXna/q9mNCdD0W06
	 LY8pOOVBlS3jrcFOMNVjq5Uxch+itpk8uPtWNsu6ugpvh+V7yug9y7GPOfaF5AfYI5
	 MMdVK0ZsLXOTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569E5ECAAD3
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166231745332.16415.16407534437453793071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b297e37fdb0acc95435022790cadf1e9305e79e7f2f869a36ddc44ffb9ebb6a
Date: Sun, 04 Sep 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662317453
