Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B072102
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 07:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8FA8C433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 07:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689925328;
	bh=g/ma88EavRamig25eBajEf2j+oqB6lW5ETsm1Bs51W0=;
	h=To:Subject:From:Date:From;
	b=aoi6KjAKHR6ILOrICJdxUi1yQNPKcSEWxFmySpq0iARrcLAYx8AIYcU0rnIpWJyHt
	 XiKAo413apCSVNa/1zduo6SO56o1I3KNzDGtTUxUZaylq1UpMZH3LFL/u73lXiL0ga
	 w5SWv+qjX0vyrEgKyVAHJQruV81ILndkedRYmO7MvQipbQudWCQWBGh4fArULvLcL8
	 8AW82BiLVxUXrt0k/tRlP+hDJSiy0WhmqKlsOpHstoLexuy9IJSZzwUsEr1KEwLcSD
	 nNrgRJZOz9mBhv6WqN1vapuBTDCtl6ydda2wCIQiJTuBVIGyJVLaCtHQygR0hMrB5R
	 dWctabDEGq3Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE684EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 07:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168992532870.28333.18358454021879643692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07dff01fc794695fea5549f6ca94c6a47e2e40bef963e5953c1dfb1bd08aa2bf
Date: Fri, 21 Jul 2023 07:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689925328
