Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 645F35CA0
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661285452;
	h=To:Subject:From:Message-Id:Date;
	bh=S1k6g84+HWrrhdaeL0717FVq6GswdNmN8D0+T/opbKU=;
	b=Aauzu/6oiLt8RPMmq7V9AfJ4Aizw0FqrYa0oGY6eH+5Zy03g5w9hEsm2aOWPAq1v
	9O4B03P/6F2Dno4VFe5F3MJO7/O8UM0cHk9ioJ4vwXwYNHKetAGE//O8vkuYGuRZXV+
	Q1QUgVNNVKTQVgNS5PyRWVanbBLXet4Xc2e9oTH8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661285452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S1k6g84+HWrrhdaeL0717FVq6GswdNmN8D0+T/opbKU=;
	b=WO93bBGuXOZHQOuLsxw2iETmKiLisMAmPPTTIZOmZCWr4h0uoq5NVMJbRS9w8+ft
	RMLxBglcRbgYEa8mQZ/RkeRa3uoB7RuoP3Q5tfJvMyYnfC/yU3TKz0U04tjd0pB05Gv
	L6Xv6zFyZV7kQXQlawmYeGGufKmaOHHKdnVsCnqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cc544b26-a1629d82-ac80-4dae-8771-87e1cea2fefa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b502e0e2afd731279ae6eb0d51477973ffa3b7829fd3a972fa2b069e858904c3
Date: Tue, 23 Aug 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661285452
