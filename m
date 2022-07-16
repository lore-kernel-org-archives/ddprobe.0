Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01DD17A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 06:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657952812;
	h=To:Subject:From:Message-Id:Date;
	bh=BVR4FOq3qikYye09vngouYtHo+/GTqnXnmZrMIFxhyY=;
	b=PV4SuVdKhJZRcM9WHkT5RHQfw7Z3K/cn7AF0tlhjCwAJWRxDU4mVAI2NVvPjhC4Q
	MM9pbAvS7vo/c1uwlNA+yB3H8uldj8jgwPCURr8r2vy7I2D6njvhw/NaPsImWuYD369
	n7EUwwcGW+0dzt5NPcsf2hzldol3cIdh8kE0Ro7I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657952812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BVR4FOq3qikYye09vngouYtHo+/GTqnXnmZrMIFxhyY=;
	b=VFa5mVXYCuvdxkDOST0DI3WKW+u96QbWAizeY+CegbDbETeljiRePudBqjt4aQoB
	k+ZTeGTwnNDZtZEvTEDpF9CBPH3zLdIbuA5WV6AaGvUpLCQe28ZEMUVrIZGWeXV9FoQ
	Nodmn2hvXbva2mSGlv2eav8eDB9yhswbdPLMrwOo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018205b03d06-56254aa9-8b31-4797-b6ce-020bdfe7bdf7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 521f41842aca8b9a872d1e2f5f7184a1942c03bd166dd977b51ebc0d8b47c897
Date: Sat, 16 Jul 2022 06:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657952812
