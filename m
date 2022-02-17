Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1F8D3670
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 04:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645070785;
	h=To:Subject:From:Message-Id:Date;
	bh=POYTNGTA/frMQeKeHlY7dYFbVDYiRdZfCtbzm6n0iEo=;
	b=FakRpxEiX/a+2UF70UbAbDCTJxvKy50es61JFIv0oU90NryAcRe2S55HXVCrccTW
	xB77ktXfwE4wGPJBR1FW6FtxKQsCCuSg2+U76h4wBUGMTseOnu55EvS2q5kMYMjmBPC
	77LllTWZ8A07uzeJUSbX8dO4YKI6+ASUWCLQuSbk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645070785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=POYTNGTA/frMQeKeHlY7dYFbVDYiRdZfCtbzm6n0iEo=;
	b=Vs4gQvVFGWXD5l9gsugTK7NIFyWKKAPeedRlEOupvh3sJSt9kxNZBW9MnAyPiC79
	JnaC7bc/0QIMTMmYQFuW216WiUt74YsIrtxwm/hHwC5QD/rnJ9evfeHI+8ZI7Yz9AlL
	cVpCJIEzGaYhsObl+AI6z5BBHOxR6LHRQ7Cwfhfg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f05dc193d-6ff2ed2f-7242-454f-ab4f-34b675732656-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6558cb8b35c5d48609b002bbb22d0d43f34585b2bbb709df2f94dcd836a6a2e
Date: Thu, 17 Feb 2022 04:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645070784
