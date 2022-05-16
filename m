Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D0410E0
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 15:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652715719;
	h=To:Subject:From:Message-Id:Date;
	bh=RQ0Q9g5+bXV7ed4KrimknJ1gpmbKaQ/ECJxvOWR67KM=;
	b=dXA3/AoxFIPkHCytZrUmaLkEbcYcXpIAv3/sX0OR9hLHUJ6LTvWFEMnWv5XCPQin
	pJiIKV0UHK7BaR1ZWcTQiXVC1PCv8amLaPy7xacjBHmVuEIlAOAHOwNIkBGpPDzVLHK
	Rie6UOeuhoz9b8xvzaKa1O/Xch5tm0jdYHqYcnc0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652715719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RQ0Q9g5+bXV7ed4KrimknJ1gpmbKaQ/ECJxvOWR67KM=;
	b=WugyUAtyqs2xi0pQtUpf4vZ2UR+LPCVIJzbUN8DLY8IgSmIctIHFn3nxes0gvyDT
	Apg46xSXo5F2Wp2sVS6i/BJHQn11q1LlU+uOUFNWLYXA3FQIZXYbjn9viS4ARvoybAV
	ml1u0uR9tU+0XOq8rCbdEPCmP9qgaykH+IpybTRU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cd888a90-fa7427a0-d00b-4471-84ff-9579f568a483-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 492bfbfe77014230b0f2edbdecc605e7a37042177c15714fe93da5d72213c320
Date: Mon, 16 May 2022 15:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652715719
