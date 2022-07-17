Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF7DD80A
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 20:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658090212;
	h=To:Subject:From:Message-Id:Date;
	bh=f6ouoBC0RfNEcOw3zhg/Fl5Oye2ajCjA2rjffJ54sas=;
	b=QfaBcDfjuQHOn2A//I5iuXRrCl/IJX4mbGlriXxNIXmHRcfHQ/2LVIl6dA6i3ON+
	jrlEhY74/0KfoDmuQmbpolJExXWgZOc+VheaYJqRBfZKfXn6ac/5rOTqWljwIV9woSc
	lkJzhq5ACEmYHohZnS6Z36VXowbMyf6PR3Xb1g64=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658090212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f6ouoBC0RfNEcOw3zhg/Fl5Oye2ajCjA2rjffJ54sas=;
	b=JwB9tkYpnJIzUYj7k97h0IjURJ7qkj57IEn/4/2PhQHV2sFwIjOi/xrHxRnt2o4R
	KnH5NO0d+8kwHFtJ3UCCcfKhCY0KPMt8GaLRr2JU4RERF6YF4S+C9WWcI5LAVXDMd4n
	zcrjQv0VYIuAHMAK1VDTPvu9cV93F9cYE61hqkw4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820de0cbab-455a09fe-9207-49c2-8085-51466d0d70bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04976856c66b1485f7ff81bc268c31671cdbcb2efc1d30c41e7ef4f1c8a255ea
Date: Sun, 17 Jul 2022 20:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658090212
