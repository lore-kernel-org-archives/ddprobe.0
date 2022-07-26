Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BA47A
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 10:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658830612;
	h=To:Subject:From:Message-Id:Date;
	bh=s8zat/CVKJ+PDXwuEyfd2y5oCNrd31aLpydwRkOaQcM=;
	b=Fitwoq5l/bAxBinJJZLcCTYTEkfD/lrOXCFJwMnHJngZjBjC/iCiAo7Db3k3blRC
	snXq0m7CigJXZEvXDbxUhMO+p7qElgKrrXTqey98Xu1SOkuPE+VbZRC3kc0sa2TZo64
	R4h0xtMmorLwX9wE/nWpKwLPITzmvitiFc+pP834=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658830612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s8zat/CVKJ+PDXwuEyfd2y5oCNrd31aLpydwRkOaQcM=;
	b=KUHKusnPic4m/V1Ihoeubsysu4ByzCiwri/MhDGCcsN0KgLwq1aZhIz4rXgIt0j5
	I7T+wjkq335Arl3bDose28g6V5BksWlOGTAHDUqhqt3eoH8psGC4WpW+Pr2MrNtpRuF
	/uBAoBkCo/LbEtagJbQVl9NpKgWVKhNeCe86DmMY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823a02673e-c73f8198-c084-481a-b0b6-27208af6c5b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f7ecfcdd2f3bf84c223823768d2c02b1c5cb70f2944cbefa34c52982d150e7a
Date: Tue, 26 Jul 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658830612
