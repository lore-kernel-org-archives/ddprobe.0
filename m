Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE5DC7A
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 09:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645780885;
	h=To:Subject:From:Message-Id:Date;
	bh=NGYW3RZhNNor99QabEnFMr/TL4Ynk/FKzpU46Eh1xH4=;
	b=cBu07r5LP+VQqbqjc87wqeT6p0Iyg3Qwvfsx5tbrve07EpVlOntdzPA152wozxV+
	OTp3R29JQDHVBR133QcIDlYCT6OtU9noH2dTMyVqUR3T/ZlDfDtNCNRE36lXNKVblT0
	MINmorWa6M8Mn6Uwe+5DR7BpKq7z7u1F0cTkSjyM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645780885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NGYW3RZhNNor99QabEnFMr/TL4Ynk/FKzpU46Eh1xH4=;
	b=GBdosh7pxgWdXjbCD9lz/myri8BTCSmABrWbNpluVgOfwaNwzqoWiOxjJjjfSUP3
	RG087l1W6c7vwXfkJl1euGvobhniOsq4/JG3bRT+hzg4m9yCdnbKcJVQ5stfT1ss+5c
	m8GYc1o+1EV0/xkqjm42qOfFylFtt3YlCzmXvipo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f302f5cf2-b33b2ca5-a57f-455f-a5cd-cb21ee6820f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81e6b3f18095d7564cfd6afeef3221b3416c5fd62917e4dacdce88e83b199b72
Date: Fri, 25 Feb 2022 09:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645780884
