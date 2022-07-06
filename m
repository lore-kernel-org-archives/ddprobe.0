Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E06A258B
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 23:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657149412;
	h=To:Subject:From:Message-Id:Date;
	bh=FRl/iQfSIG1mD+cCZP5at8rFqAmF3RDpqblBy6z8o4I=;
	b=dZTx2zGjnA3mhNXkujAP5OVsOj8dFqmO7KE3yuC2KTOUHihMX+aWS7h7eH6xBQlP
	aD28cF41kyQAYsj5bn5B9E7tX1HXnFBZTfnjqW3QmGY/7gqP99SvzFDqYwNS6NYr5nf
	XWXBbqJOzf2rmZJdqqTblXQO0mzLQEpEvz3Y5LV0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657149412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FRl/iQfSIG1mD+cCZP5at8rFqAmF3RDpqblBy6z8o4I=;
	b=kFwJOw3TeMGSLFMbV4Ik/vm/Xuygq8HC9U+X7uLFssrWCleLsrflDcm5fai5yZ3S
	BUhGzG9sWW7UHGmbOxqyWeJaNaN0hLPRqkEJt1zwd8DmDMGVZ4v6A+pWpKOuocwGx1J
	35NQseDGiakJ3T7VP2RWgSKcRLxpaJ9TvyIdp014=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d5cd540f-22f1e725-651b-4995-8eb5-e9921596fe53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15cbaa01dabac0863085eb6a28930cc80a2c7fbede5625768ff0b1f07ee8d63c
Date: Wed, 6 Jul 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657149412
