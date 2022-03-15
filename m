Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C5C723B5
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647359784;
	h=To:Subject:From:Message-Id:Date;
	bh=8oSMC4Oooxqep35PSs1E5FNY91empUeano1QNwy1FF8=;
	b=V/apt2hyrGTmh1uNBPClM4xNApNXiMgjDiaU7nHckTz+0WRrQaBQ0c0KrD/IppoY
	uvNorDiOpXVgEW8/aom+QodFSCqA5iYkruGM4IKtkFZxETC3vA2vaxMB1AhgpTFdWJ7
	n9T/tZMpNofZx96bhuhPOU9MMaXWd1vv0Ekqf/II=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647359784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8oSMC4Oooxqep35PSs1E5FNY91empUeano1QNwy1FF8=;
	b=J9ngMV55rfdms3B9i17RcinQLmfbIpx6uFq57WTHSUQDpuYs6OV+OuYG56zt4zgd
	bqP18/APHu5tSvzJl74fy/XkS197Qos8K3HRpJhklF9gyV+KxaB8Ro01lSyrLJ7xN1q
	WJ/BfS5m11y1ROnXNnBGib2lPg6czwcV7R4Hbyic=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8e4b7782-34075b52-bb03-4760-93e8-b17867ac363a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6cc6bff0dae0c78c7cfae8bc7990c593f108cd2e706914212885666661e04d34
Date: Tue, 15 Mar 2022 15:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647359784
