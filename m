Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2273233C3
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 16:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658679412;
	h=To:Subject:From:Message-Id:Date;
	bh=RjRscHWwtzZS6GmrekuU3JdrsFX2/9gpEZD11jVfoFE=;
	b=j0k/PZoV0gQXYWaTEdEG31lL+3avQxS/Q1Dh4PMPZsNLDfbfW54LtpIMAvClownK
	MJm3HuFsBHa4QFbDLclPSSWRp/QMxsNmbaaaYWXFFYaamkUXszU347tYW4NYK2utNv9
	zAQa36NowX6fAhvujJoerbXyqfovPCxdRYbJvYDY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658679412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RjRscHWwtzZS6GmrekuU3JdrsFX2/9gpEZD11jVfoFE=;
	b=CoqicrIk4uXpKy6xw0cfYSZDzlwulh/zxNMfiygPQY/tT6qeviAI2acaXvdM/SnM
	VbS79CZOwOi57u2PyT+3Uvkj7gWymEAzF5YbbmyqamSN0PcyX2iOp0AvGdQYRK8L98l
	eVMs9pWRM8Q/1tNtKzy4fwF24KvrDlS5/OGTbaFY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018230ff465e-98d19e5b-9f28-41ea-b671-d4edf5424d47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 982c16d001d4114e24cc1541f121bfab2ba3b755e99d0694b72c9c429076d5d0
Date: Sun, 24 Jul 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658679412
