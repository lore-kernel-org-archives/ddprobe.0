Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8DC7F
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 02:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4D2C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 02:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688782028;
	bh=78Y1iXKraAmX3Ajl8a1sKQT6lAPy0Hkx20st6Zv0AUc=;
	h=To:Subject:From:Date:From;
	b=N+XeBtqSVSQjs5S65MnC9rzgc8UI1JxQTIqy4qAsU8qz//8pwuWaMq6ZZG2u1tiUa
	 Y3WFR0h7Q2kQZZgIlmehrWQCMFpaXjaOEvMAcwDvl7m22ey+Pd2LdhNftqvL/7HLcM
	 KqT4ga/WZyc6xYeApTTthXDd0KdrgkLi8qMdudVosLAuRnfZas6/OSVPmOIr3pZkSh
	 TMY3J1PaHtMrNHdk+Z91RKxWx/2YO5QfPO1HtO9Tr+C7eWsOJxnwUkFmlF7vHA3Nh2
	 9hFF7way5Wu/qsVOlBbwH7zW0t7nbDWVzPSU0A8hHy8pwFpnFQ4eaWBfYhAlqQCZ0c
	 PuT0+wWQEFSKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5A7EB64D9
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 02:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168878202867.21942.9004000815447064664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ab40ae41a55a3c30cb98789a1c96186aca88972c2063281b7b12663ea54eed
Date: Sat, 08 Jul 2023 02:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688782028
