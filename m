Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA2106465
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 21:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647985884;
	h=To:Subject:From:Message-Id:Date;
	bh=sV7p0kLUTaEH49w1R5lQ9Wp/JL8DRmKwK+/RPccf9A8=;
	b=Mn0cXprbACkDZqHwuzgZagL8QOSiJMBExySubQyY4YQRW/QPaGU5Oy4vrwCOTSRb
	quN7XYFwt4WdQdgDUqai0eOtxhIFFyuzb61WUGbAqEPyQb5n0kZkVp5QTTOENf0W+eF
	Nghi2rvqyZPiMr8lmhZsynZ8lTXuU6ZcR51G8n0M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647985884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sV7p0kLUTaEH49w1R5lQ9Wp/JL8DRmKwK+/RPccf9A8=;
	b=DuVVj9V3heg/Z+0InS2ZUu69+H866r4ldcAKRrXEOxbr+XQkNhjAacs5MQ3GJcfU
	qesFH8cp9JX8+RwLJ1oJ8rODb9Ncnh2tGF0euEjatFjmMo03x0ZvCCQGHkQGWCuDmcb
	xwjkPtJ53s85b6/vXRFGiAOQLQgVv2IOKMwagtmc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb39cfe51-61e9644b-73da-4fbb-a86b-35833a9562e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1d6b92e28577aa8960ef9ef201071d6cd3dab0aded0132f67252d4dc33f60b1
Date: Tue, 22 Mar 2022 21:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647985884
