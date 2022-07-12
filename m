Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436A67A
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 08:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657615612;
	h=To:Subject:From:Message-Id:Date;
	bh=AQvJngPViDUk1jtM7FXst3hU8VARTwaEEN2pJVl9bSk=;
	b=UrxrnGPUu2yeJtcCQ41xqf5W74enuz08ZfL0QkGc7dTF5/za+Mr4KRwNqSFhemjF
	vVFAQees+2vIGi2ZvzMAsOulmYAYaOwxi2y4b1dx/ZvZDBxTfZn1Md3ORfT4ah/2fPi
	kAns4kkD2KVp5wLdMMCdnZtyRUD9fNBQoCKMVvSE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657615612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AQvJngPViDUk1jtM7FXst3hU8VARTwaEEN2pJVl9bSk=;
	b=e57enEKjdzQAgWGKKue+Au7BLYLOqbBq/4MFDwmUyV3k2PzztDO0ra5wYvilsamo
	nmGKMuRVk44jCvcmikpBftmFxvhu8xbvmmNrfZp4l/B03vcqVySCwBnoM0h6STOSDQ1
	tJmSglU6YgSePxEAYZlUw1kobnAtV71aQGOPyeTE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f196f9bc-2fea6c11-8877-461f-8087-9a2775503c37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2d9f6ec2a24e7bb7c65d4c6cddfca2768273ce36eb6c47154839a1b5c865684
Date: Tue, 12 Jul 2022 08:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657615612
