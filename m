Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 715F41869
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 18:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655921639;
	h=To:Subject:From:Message-Id:Date;
	bh=vseYzL/dyY0ZVl886ys0DtkSRWBpZdn3p9BxrIZGJxA=;
	b=Mg5NbU0J1P9Qbr/KHYHpTr/W1ka6K+LFcCdqt38b6CGfKemjX9sIF09EkPyEnafI
	UQMOk5oJJPPgUS7liSbxqIxZsXqCJ2ETVYU14UgCOEeleY+16MRXI360oqj01RmB5xe
	QTVfWphloTdodq/orzwdrFFfrEWawk6ZUd4vrQfc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655921639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vseYzL/dyY0ZVl886ys0DtkSRWBpZdn3p9BxrIZGJxA=;
	b=N8ujtwaovZeu1npX148o4GW1MZeZU6WXCBogu901VxzvDnWzy7wiSPDbVyWMvdXb
	ntM7Wit8eaE5gUjp50njqpH721jbPxrzgR/K9tbEY2VnV794z3uJ1ac8ymO+VmPUexD
	zIhdJ6DEN0WUsCmhy8Jr3v8K9f4s2yi4dDLXmsKQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818c9eff77-1f916b52-28a1-4872-9307-2c661c015a58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dc92ac5ea02c01ab0c7b86f26f3f509029f1ec4f31acb1363a55bd98635113d
Date: Wed, 22 Jun 2022 18:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655921639
