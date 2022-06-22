Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292AD10E8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 01:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655860739;
	h=To:Subject:From:Message-Id:Date;
	bh=QT1Eatuxgex1Rr5rqmrOptcdVBYhc6b3jbu89/X2cwg=;
	b=kz77CbhESi+PMZmQXZjEKxHtQjIfknLjiOSXMFgOeS0bjkzlFl7nzEiIT5t6E5Dn
	1xhIORArIUgkoJhIbDAqGJVyfU0DR3AfoXw124ipFeNuVbRSiqo1dj59FtcTaaapEzi
	5SYFUeuDYLa7Atc8esHh7OhpPVt2GrQ94kL6mwhk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655860739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QT1Eatuxgex1Rr5rqmrOptcdVBYhc6b3jbu89/X2cwg=;
	b=DDdlGfp0IRFloTQ23Tl0AzXsIQgu8904/CDmYwNKEsR6rREu4tg8VzsoOEwC1BDJ
	sMDabA6/YU1NVVaXGwkBxRkrjIdyTYNgA6IB9mW003msUzFySH5JSDUvVMT0i13Oumu
	3wLtzzbVKJDO79uxmV6FtgrMwbAhUyKXxY6H80Jc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018188fdbc98-7baffa44-c004-4f35-9acb-f953a2d8bfdc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72fae5db29394bc7beb1e46f88a592f4039003956fecf7d42f75acd9226e4e06
Date: Wed, 22 Jun 2022 01:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655860738
