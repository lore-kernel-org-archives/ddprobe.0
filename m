Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E257360
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660178452;
	h=To:Subject:From:Message-Id:Date;
	bh=JAhQBjwYpVq1Jds7KjgvqlA0Am0eQ6m5kFFePTHu1R0=;
	b=VqFbdth2JxEY3++aosJjkrHoWnXLvM3VtRxg0FIQiROVLNF9fBmqVSV5XH+ZIoRk
	4aINpCjd9/0kclT9gw3t5SYQG4qvGRUJAU3KWmOGQV8qmR8TJ865mO7PueSy8IaA+kf
	XrafrSqYVDjQiWPsBhKdDiNjy92nmQzfBNNNDXqM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660178452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JAhQBjwYpVq1Jds7KjgvqlA0Am0eQ6m5kFFePTHu1R0=;
	b=Y+jMfUO2xtn3F3c0DwnvTyN6MVwfpRwwBl+/dewd5wC9ibTkUKevzXHzwlf524T4
	m82sc4Sp285q3huD3d8DBAtlja4PWQNLc/vFRqUwno1gjqS+t8/pkJI2ujeD7KAJwpQ
	nPM/BS3At9SIp/PXqWqfMlkiq8eNIDO+Ia+s/B/M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828a58d032-9f561ebb-dc7e-4942-800b-f61465aeb832-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d7e7d41eaadfcd39055cc77e5190f29f1dff4b27af13d87c496d8991c66ded4
Date: Thu, 11 Aug 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660178452
