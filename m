Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D5A817
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 12:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657284412;
	h=To:Subject:From:Message-Id:Date;
	bh=q61ZJ+FcyurUtZekJ7gVhzNmffbNglozrGLm1njqac0=;
	b=W4kiye9Rt1LFANApN4zDkzdaZkzysfM9C8kVy30c0zkbxfq3QTFr7ebVWy+W7SAJ
	yyj1aqPFK7JWp+Y66tL9aiLU+PICIVXCc/2MdIZpp30gT8s8EqMmf+Ca5OTfz61ahgz
	07B0HqAWdIX2aWwyI7ZTHVM+K6u4XXA6oXDCmNzU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657284412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q61ZJ+FcyurUtZekJ7gVhzNmffbNglozrGLm1njqac0=;
	b=IvzOpEv/kbIDQN0Gah2ISFIVh/jWYSKKrijhio1JkzXBQOjRVmhuGJNEiJ63UZmK
	b6HTHTMKrQe3nmv0Sthg4qxObXz7hb83eDWxfXZjgoVTuYitiAvlMU8exZgkhvu64WE
	TKyybViiWerLS6hRwtrnpDzU4OKHc3wEKRJpCrxQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ddd94399-fa8d2129-727b-4636-a170-8669f66f63dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b3be3039fa9eba6322353f351cc67c347a24a234defb5c972dc4035f477f114
Date: Fri, 8 Jul 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657284412
