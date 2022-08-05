Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 945C17C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659730253;
	h=To:Subject:From:Message-Id:Date;
	bh=Hrq8DvXKACj0Gk5LJuFqPm4aXR9a5kXwq+2ee0jI7xs=;
	b=ZGjvhw8Lu2SXwpltBG7e7/wCOg6AscTCK6ofEGjx1mdeE62ZV+6ODi6SbsQkEh0W
	netO6HrQMisCC70g+5e04ZsIKYbk+ddQmUduYp3eFjMQg0JuRC/WdR5QO6B2S4musqx
	tSwxhKvdoEAMOEwxBu4L1xa5vEKJ1p9eyCte1ygw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659730253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hrq8DvXKACj0Gk5LJuFqPm4aXR9a5kXwq+2ee0jI7xs=;
	b=SEQZlJ1PFGrVlI2lHuqcc6IaJTwEYI8C4LvWhL3zCEv3yDugKtJJK+UsBf1cGj0J
	s3Zanr9kvU2DaeCLih+7t1zft/xFWVTwupQA4NY2voIeCLLlo0kulI0TtTWpoAIlZp3
	qHuC2jhB36svpDJ5RpMctZQWqqt5nCGh9W5f/h3c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826fa1d369-4d373ddd-8737-4673-a61f-b8538877e81e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34b19a0f1e16cd5e9c17a55e910866f2bf1b17e781e2ffe1d6748bd2d4f93965
Date: Fri, 5 Aug 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659730252
