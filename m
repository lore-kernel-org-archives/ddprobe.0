Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C394B4419
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DA8DC433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664914253;
	bh=yDuVjlelfWbV3obJnGIb0mBjdVbum586NoTkkIClwMA=;
	h=To:Subject:From:Date:From;
	b=KHmWAO91U13A5A7CQnwKbh9ukniaenHtcDYZA2c44ih4a+NuPpxtgcdEkwr9ixo7q
	 Z/s2YGmhzc30Z4cosq3chqvz2hrJmjGJNh/pfCxXRwYqSH9ffdnckK9MbR4RsmVSDv
	 /Ou+zROgCeizsFOeF8RnbQAC2NgC/EEGTovngZwsbgvdo4emtbdcHdrPQibGRuC5ED
	 ev2zP33e9d3NDL1xVGAnjwmktG5ZqICovhPJnnIY02myfrbeZDSSwhVK4SQkvb9qVR
	 jrautsz3XhD4/2Q9X+403gZw3ucem2BMKpVn5mVDWSe52/GQNh7CXqmrxueRZM1WGm
	 TisZpAT5t5z8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E1FC433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166491425333.6862.11666595540073864963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6370ed1a6b5ab21fc4af7bfcaccaa3f1f7f915b1892714b531b3ca70f439da56
Date: Tue, 04 Oct 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664914253
