Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66DDECF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 12:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655815499;
	h=To:Subject:From:Message-Id:Date;
	bh=HG5IPVhhXF0BU04dRZ6orb2eNkoq/YtwzN6CO79UUR8=;
	b=NCM06phcRmGYTAdNvVLEpvHHKFbA77+mKBrUEVXJCbEo8OzyzgvVBXnavl03coIl
	S6+NMroarPhRQQKpnQr8UmqoeJ4g/PcsVTEXoy/mgvM+XIPiD5L/ukwUexvyD+TXR5h
	2ZaHEKhsCPX8FE3hFY9PLkG0wdG2+W4nxASQM1yY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655815499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HG5IPVhhXF0BU04dRZ6orb2eNkoq/YtwzN6CO79UUR8=;
	b=WTtVuDayJu6rtql/UamRYmwx8CU5vv+Fg9pgjQ9M4wQdNe+pWplv++6RrXRksOfi
	wSfrIMzzHSsve58RnsovoFPChrYak8ltIURPDiEYeR6+JLO5lzc/9WVuOTwLq95VGd8
	qbjRam6MSXeNAkhoVhapMtxt14A2Sp0B/zdkt7Cg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181864b6de4-77ccd30f-3cad-4033-a720-d947c0b46c22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ca3bddfcf8c69240b4cf7a6731fa8ef03bb9fd1483b7c6ed4385fafc081aeb3
Date: Tue, 21 Jun 2022 12:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655815499
