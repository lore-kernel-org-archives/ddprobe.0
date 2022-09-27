Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE3AD80C
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6871AC433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664282453;
	bh=C+MJArWtBMA48OAwjfmGzgZhpYb4QKjXqTVb+17lZBA=;
	h=To:Subject:From:Date:From;
	b=S5MvKV4e38NoNFWeo5nVz8Gh+Ip+3xHYfkRtaWs2QX0Habn/xrnAVjVrIe5QWbS/K
	 7tsuIttb7fjX1oczVbxqXISxPUZaQ2IjqxrwTzbUEGsJao+HCxHNfG8qsq0Wfn0KKA
	 QztoHukezYygAM7uVZHb8ITtLsVpjMzHVnAKOfENn7lq11l184vGPi+ybidEToQyUa
	 dK1Mhf9pH2k8LgXcG31ptRQyXS8J31ICs/aHtZ0BA1nmtmOwBZenJlXXSOxtWLXvwJ
	 mjqgLcFfJQzw5u4uT1tk4SbUA5dQ402xHIFZFBmp4cmpKmSa4qBk7yfw+XrMDhC01I
	 4BPsyIgIR/y1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50E30C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166428245332.8440.16373949319805541155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d894ff288e14371a5a12f82e109362ad55baea5076ab6ac4d7f839d8ab52f103
Date: Tue, 27 Sep 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664282453
