Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA07B2FB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 20:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647462985;
	h=To:Subject:From:Message-Id:Date;
	bh=wsR9uEaFgqxPnQrRJ8oSIyJpdY/Txq/LT9rGwgU6ahY=;
	b=gvjA8TK/l3G34P9Df5+jKbCZ7sUxOXmoeGbU3PZ6qbR35X1UP7jSQZgsi7a7ixki
	I5hTg42jCO0+U6yK+lfC+J9majo9hxbja7y4C28S6T2PslnhfQiRPOGDxl/ekSQFrxv
	R/9Hvlcx6YMf1E/LyzaAZogPFqi+ThGVy0XtCYxU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647462985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wsR9uEaFgqxPnQrRJ8oSIyJpdY/Txq/LT9rGwgU6ahY=;
	b=NXefWafQalsXZ92IptmkDKL8YKViHGcEKcJqkkrJw8apvXXSjk5M4YWSdugH0Ejx
	Mjfr9HZ0PnjJlz7AzwdNeO7e27c+3eEmirwT5GJNGO1kziEuduGycbO89/CrmpVr5hi
	2scCzIIKiaS/pbIMQbXeYwX4lspXjgfUH+WcrU5s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f94722cca-d53db9f7-6385-436a-8702-941b54ab1e22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 952905730d76d71dba8e95cd2b6d802a9f008a2086b3384b771fc9efe03052ee
Date: Wed, 16 Mar 2022 20:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647462984
