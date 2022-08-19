Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D7C7B
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660882252;
	h=To:Subject:From:Message-Id:Date;
	bh=Krm98fyiOhmpwSV3B8/2L2Q1hFyFNz7kC5og2HZe4KI=;
	b=aShhW33QMp5MvcbNEJ7nMSekpKc1np8FTPo0uyAW/FilTOhFmgSD1MQyRngcnjwS
	LBBqjzSi/Km0MgNWOpW+/HLnyAH8CK3IlCAeUVRO0EZM2djGPh8bYFYMdwbCfMc6UsP
	3QE7veQ2OORPy0zK94CMXcB2XVPpVmTsGh9Z+KSQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660882252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Krm98fyiOhmpwSV3B8/2L2Q1hFyFNz7kC5og2HZe4KI=;
	b=aNvs1HEQ6iYUEciiAcnHTZkM1FChnbUO4RbaQqWIY5/Unk0/GYRx73R81TAGrH0+
	5awu3HmfIKIQnH68xlD7kyGc3skm1zzgTgvQSuQQVovjgZGdtGpaJ7jFFWh02B40n++
	j8gryHRbAyWMkcSxMerLme2GcuDH8AnqTTf6dfMo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b44bf351-6765b540-63bb-4e1b-9036-3fd7efe5d635-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eec3036469f41a5dc1bfae0a0a71463f97da29c6ecb3f1d7ff93c7bb8f54f80a
Date: Fri, 19 Aug 2022 04:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660882252
