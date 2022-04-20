Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF917A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 04:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650430138;
	h=To:Subject:From:Message-Id:Date;
	bh=ihnEFRHUPG+3k+/N0R3J8rPpBFGos8ueKCfxc5U2W8A=;
	b=f7VAhnfHyV//bJ/5bV4Woox9Q+Uw9InYvTkeR54+YKOB1nyZkcrr0oa+7WkfZy6E
	WMGKfSsNRwOUkb8zL3f5RvinLk++69t/muH4J9jfxHAY74S02sy+eyKMxpZftnFvWF/
	DTowu/AiL2vcYXhLbyMZeDIVZBzbG6UIahRH3fJc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650430138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ihnEFRHUPG+3k+/N0R3J8rPpBFGos8ueKCfxc5U2W8A=;
	b=MRzrLjBhynl7W9Tfu2oLeby8OIQkY4xRYjT7vNwBzaQSePoJXJzhZijMY7jEZ7Ym
	NMZihV13UsvM0SO/5i+lYYTQ1Nsw0DS0qBGXr9klXApOMVdNvxy32GljYfhwyc9e5kd
	ThWXGuSpm22uEdhzjvQQP2SNUqoBLJkGNnO+XVYQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180454d57b8-c2425a99-6e3e-404d-8f5d-9e56af9f48c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5240d3202feec0314e9c1b2b041e02c06f54c4c94f2b4b1ac47baab9cdb1ab6
Date: Wed, 20 Apr 2022 04:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650430138
