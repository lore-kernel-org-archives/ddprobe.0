Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B61867A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 06:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655361840;
	h=To:Subject:From:Message-Id:Date;
	bh=tfQ8u6mWhtbD6mo8SFp5G3GqyjLlpRv43set/7ckA+E=;
	b=YTuaClUwEiXLF8+KAGWSFdRx8IU+w1xQt/8T4N9VQplkVJXpNkODfVa+BDBHXCQX
	LATSlxQRZEC1+K838S2UGdrKds6vyQeebZoJVIXSGBIOACWaRFu2xYS/IQ1uqQ9NKeC
	kBYa7dL3ngpc8/7LssRUk9vmPGb/NHdRCAF0/4c4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655361840;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tfQ8u6mWhtbD6mo8SFp5G3GqyjLlpRv43set/7ckA+E=;
	b=RGtjOMlCXeqATystswuyr2NMzTAx9cCJPjQvgb+yaX1STMCDqEmE+L3v7yWrdiO9
	7pNwbMpjkOv/I/3njw5Rcy0oaBND6M5m6kF6cCasbjhk9CFlXpRC1V1yW8YE8Rvv0a6
	GVLAv2xFTcI51EQ6WHVsyO5mmUitAdAljmVzOZHs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816b41205d-10e02fc6-8d27-490a-ad6b-243f16297708-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f21cde69d54e5c05e1a24231bc31366d16d7f7fe7f7f67c46737ac04a31d903c
Date: Thu, 16 Jun 2022 06:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655361839
