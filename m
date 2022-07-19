Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD21110E9
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 09:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658222812;
	h=To:Subject:From:Message-Id:Date;
	bh=UlxKt+X1UJquslBiCUSeeCzWERH+u4azFMCBLOJ13fk=;
	b=ZK6q3iTH72BGVHLakz80s8yzUXNOLKVu3Qf+YT+jYS7i9OquEAZNhs5u5diM3oMr
	Ht+CDwcey8q64zSLKFq6doavLRAlipHxypN8IcsBt2lCtYypeAyp/BtlsfsPjVE9mdQ
	/IuyI82Mrw7LLoTTH1lXNtt4Os/YTGkjhgupv8HA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658222812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UlxKt+X1UJquslBiCUSeeCzWERH+u4azFMCBLOJ13fk=;
	b=TTpmbLfHEfviJPxjnRbOLWQLCqFiWI/XK3JJvrfOliPDcI4TgXlI7GY30H44R1aE
	jht9yS4Of6bGnm/vyJlwAFBT040stJV9O9//Q8UiDqW49mhPnhuR4E5ZDeeri7z9Ypl
	zvCdBn98DMXtkx5hjJwLAuu8Q1Op8sKmwAhhGAms=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018215c81cbc-169f50e6-3659-492a-8563-cae304153ab9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45cb71255dcb67ce1560c3dd67d55469647fa0435bc7d8122d1f2fe11b0d58f7
Date: Tue, 19 Jul 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658222812
