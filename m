Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4AC7F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 08:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74EBBC433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668585654;
	bh=259dC3/2JFi38dHanLsOt1Ui0azjBzWcoLn/KWJ/Mh4=;
	h=To:Subject:From:Date:From;
	b=kMwK2o8C6+YSK6m8b9DMIQ4kIkVGfQ+p4OwKlcsUOckLQWaJQhg/GvoNd1dle+Mhj
	 M7Hxb5bGn0ns4c2jmRnMRXkaC4UcqmjwbXSdZB5pW1BT7ApR8GGQmM9jAnPjhRqwZD
	 jX3sqS+6Lzxd2Wq65PyyImdKHetPTaKFlDEDzjQxnZRRH1GXUpCyb7/HFiTagAfRly
	 hbb4apcPWR+taqMBw0P22ArmLo1yHdLdzHggGAkAGL9NLRIjc4zTb7fB0Nbh2fD6Tk
	 OjSvTHZYi9fZSy0+J7vJIJxwUAEdSaAaikLZAJZGdReI/O4i8umvi/MjiR4gVvHnEa
	 hm2Yq2652ym/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59308C433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 08:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166858565434.2379.16358917328878750671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dca193c6633fb9a29aa93ae2b91085533df75ab8e7e7051968de48eb431181bb
Date: Wed, 16 Nov 2022 08:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668585654
