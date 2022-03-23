Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6537C1866
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 13:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648042284;
	h=To:Subject:From:Message-Id:Date;
	bh=RmnlSW6X80Ap0a5VK/WrOIUE6fQI7xaHe3arj/JzF7E=;
	b=j7TIOe+YzU2Y8plGUxwKQsblKz6q1PJXcws54pOttWsQl2qdDOnLcmTk7bXfd5y/
	QPOmBw7k0qJqXN1Rri8UT6RsXerId4yUbFquHSSCOT3RaZdv20Wed+1q52SKtERvZOT
	RwZeJ943+U2OU8VfHeBjNpqeLfnNvaBkNiZnKbD8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648042284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RmnlSW6X80Ap0a5VK/WrOIUE6fQI7xaHe3arj/JzF7E=;
	b=BJVVpVkdKa2DGqrvjqfmZWg3q2xETu81vK/kmsHT6MZn0URifCl7gnlXCRi49Jjm
	ls2m+vQT+B4YKcpansyvMZqZd79Y9vm4Y2M65DDv4E1gGTxxX+IGAPqeps2PtwljRtD
	yo7xMLy+wcNi0P/Zef6M1v6YFH3QGVt00cbCRpQg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb6f996d8-e7d25442-7afa-4c7a-af70-bb03c2fed649-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e29decd645b18fde286a5793a20899971b4eb64802a11349ef902c90e6368b71
Date: Wed, 23 Mar 2022 13:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648042284
