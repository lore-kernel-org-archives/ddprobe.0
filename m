Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2999D4C84
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 21:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655500499;
	h=To:Subject:From:Message-Id:Date;
	bh=aNVgem1YYBsvZMPUv8GAf6dTg3GsogtWr/C74EM7SoI=;
	b=V9mGA2sz/SuzP29SUyaC9SrrXeKTYUDKfd6PuwUbZLPol8dkSWcqI0vINeXiYLyJ
	B/6QqZJIbhV6WAZSIK+MG9ydywwhEwNBLoy3W+UdAOo3Y2FPADXpo4ilZ6ZDaTBIrWn
	E/v4CSrTH91myweDrwHfGMXhSLnMRN4y08yRQ5tc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655500499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aNVgem1YYBsvZMPUv8GAf6dTg3GsogtWr/C74EM7SoI=;
	b=TvEilUaV+631yzpVq2+XcHeGO+m7r8JmboRS0LaYGgV+113d/0sMublKmaSrU/Ca
	OetUpCizzK0SdPNPJiDoeq/KTsdq7ECLIkgy2gHlzeSjhMFAkYmyJPKSrNQz4axSaig
	UFRBeJOYTfGPFdpM1oz3pfSbcbyCz34z5a9bT10U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817384e934-7a5bd623-043d-48d7-84bd-ed6197df60fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0e36676836c4cc6de3b8a409c2a3352cf42bf592ea17baa341796f7d68a3aaf
Date: Fri, 17 Jun 2022 21:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655500499
