Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF3746BF
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 22:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658700412;
	h=To:Subject:From:Message-Id:Date;
	bh=DTHKEUgJQzR/NVNeLOszkIwn4MGpgWay3zBhkmQFvQw=;
	b=gQe7tsd9rPS/5/RDGfdxbp99HNd1DS7D6pRkKNW1RFeXou+oRvo2FHXv5DX3yTX/
	6b6h8e7Nwd0kmm4UK873Q/qzCshgHVmPkHa2fHrjWrRUbHHQe2dBPh1O7lBQVITKExp
	XFiIyWxV0wzYeX7aYbV7SnW9gy9Z6F/372IGA9M4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658700412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DTHKEUgJQzR/NVNeLOszkIwn4MGpgWay3zBhkmQFvQw=;
	b=XzHQM3MK5RwqJh2XthuSbpQtvJgJ8Neq1UliQFOGBdZxK1uIXWvNMmiWnF5Qm7/p
	yGMWxVBlcXG7zKu4AcAwxhCxJVYL/s6a7LJxg/kzYk2JGoXwy33+UpZ4hwaoUUsvNdb
	4WharBCh0bF0ZCFWPoCbWkUQh3uQq/vcgEksdvXk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182323fb586-5e89dcc4-572c-4f72-bd8f-0767bb20e07f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c84e40709cffaecc4be61f7698e2c686df527e5b16260ab055f8629de1937605
Date: Sun, 24 Jul 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658700412
