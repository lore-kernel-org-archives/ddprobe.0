Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08AE8321B
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 18:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653934499;
	h=To:Subject:From:Message-Id:Date;
	bh=1pfWSBphIx/BfT6SOL2h82YHgDhM3Np35bmeMpvTwKU=;
	b=IvStrY8LYjIW2yMv1Jb/VmaB3XnyH9j17EPLKr1hVCzIOd5EkXTyAsbOCwXK5I4Y
	ggNBLV1fDpwUi9hHaA6EmIId3elITRrr/60LujuUTOkbEFK3P+gkaRSC4NMFgT/Na4R
	GD5KCmJFGBm1A3oNPw3+GsXDQCi6ck2Hn2WmoyuA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653934499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1pfWSBphIx/BfT6SOL2h82YHgDhM3Np35bmeMpvTwKU=;
	b=J5mj9YAWknPILlPm75HadhQUtcYNBHWnqdovQrDYM3JVgUdvqflhttgwK2AzZKaI
	vvpUdpPR7NpLkbckOGP13l4eVXmJUwk+V/xSkXA1H/fu5iDdl5GV2HMvyEhcTp64ATK
	/yeMcTHvmHHY/gfsRfmYLjd1JM0KfzQ/K3Wky0eM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181162da5af-4b76eaab-2ed7-4872-8db4-f437d9eda9f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 538831585e3b9ba65fc024a543a7e0846c7dc327008e16c499a9f8185969fca2
Date: Mon, 30 May 2022 18:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653934499
