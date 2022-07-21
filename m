Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ACA3538B
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 18:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658428612;
	h=To:Subject:From:Message-Id:Date;
	bh=N9KvwFV1pvs0Lt4qR/AQia9vqRHouQsXemPTjBXQHfg=;
	b=knaqVOlBffcZ6rAUwztaTuFyC8dwA3xsTeE4sI/9FDR4PFxfWCPXXqGjMJV07pD6
	jjTr3UpVPOSIlL7LhJsI0XaqV4I3wEHfSmRKfRUCor8TcOEPLroDV+YiT/HsUH3NH1Z
	SqSsRrgaK2Ynx5oHFOZhOiI/eQI2ryFYlaTNBgUg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658428612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N9KvwFV1pvs0Lt4qR/AQia9vqRHouQsXemPTjBXQHfg=;
	b=JUVHMZr0U78SnUmg1UUGaB7jt0mPvhtBO7X1eJrS70/9e6qM7z5f+tyLnAlrt6Gx
	eWd1bo/cHp43sECtmRoIe5NAvb0+LXvs6wbAvzkpk7ReEqxkmf56yyvpIUb1CbiZtyQ
	OleXF6tF2PnyF4vOxTac8ILL4SJc2lG98Yj6mY8k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182220c5ed6-c29b4ead-4b3c-4e94-adb9-b63b0f7883e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 306b6e67fe776f0ca8715b671eba1ebb929caf5707df60fe2790b52f198a190a
Date: Thu, 21 Jul 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658428612
