Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D8DE3FE6
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 18:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647799284;
	h=To:Subject:From:Message-Id:Date;
	bh=wmPfV38u0GFmZa6jssy6niV+9nQQTBPgBLAaYoR5uCM=;
	b=JCSIWWw7Q/oQfMMJe+7O5dL3K7yCXd57uMJ4zSnDKZY234d4qMkBCONl+gqZox5w
	53y5+DrqXW4+5gZLN7LzzGb+YwIVxvlLZDpT+w9d+mdUU+QC4rXfVCfg+5jTryZ27ET
	Ky99cdH9Yl5zq7s/LBKCrJ7OZ/5e/3AOr1c43eOQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647799284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wmPfV38u0GFmZa6jssy6niV+9nQQTBPgBLAaYoR5uCM=;
	b=YQerBGT7HDH+qBkd0P1+EZtISphn83QGs3HYR2QPEH+AJAy7911+JeUAWafW0Bkn
	n94lcwAgxvRZXYhHLx/fuUUjAG9H1g8ZRlM3LpwHqGpMEs8zJcxKgBGGRWPVF6Qvyri
	WpRTQ8Xj9l00P1uq9dN9THwzJymar/bB7qYQ0r1A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa87db41e-cdc33a6f-78b4-4db5-8da9-ac40a2851ccd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7be0b50b6be343101d8a5563928e5e9965a2694bdb8eb5d6bd53da673129c5f9
Date: Sun, 20 Mar 2022 18:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647799284
