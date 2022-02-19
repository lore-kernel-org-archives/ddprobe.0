Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C58BF55A3
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 18:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645296385;
	h=To:Subject:From:Message-Id:Date;
	bh=R5UArF3PFQkq6pZeDy2X25zJLbocrSwdq9zMV2czJaw=;
	b=H/zdbKVjvCU27ru8tvEYdQAVw3+kKKtIEtkAhlI6Ojh0Lg8sPXJOmmEK8hSMMzvs
	PXeA2XftwNvmKUGnQJiCe7281rfDtQ5GL5Wz65KEHbn6yqlXRpU70rl4GUhG1wKhkdD
	D5xQgVLSfPXnikWJTcFci8E4wfX53jVu499UiUzA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645296385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R5UArF3PFQkq6pZeDy2X25zJLbocrSwdq9zMV2czJaw=;
	b=eftG+1JW0g4Br84vN6TvqMLeYZ6QGvXXnL30FTxF4i9LvwZJYus9PpuztvOsdWTo
	1WCTNwSfN1cxd3EtlWKOolu+7g1RZuYQ30WMwaC1Y+UqMLPGZYAolnrp7N0nJhQxvgu
	LB61PsDNlcQGOSPCarDrL0uECkVqvMWcUnY+UHug=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f134e7b32-1dfa5227-49e8-4f5c-9e1a-40f55f6aa4e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51aecfe15854cad10fbc116255956256b1027463ac42a1f3a9ffd9e9d514baee
Date: Sat, 19 Feb 2022 18:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645296384
