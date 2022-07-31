Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4574515A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659232252;
	h=To:Subject:From:Message-Id:Date;
	bh=FIXR6DxYcBhZ5CQvEQlxO5evY7Bfrki5hfsab0dcqP4=;
	b=kv0FZF8Td8npMlyXWHkqHTOP8smMP1dyb0sq4zL5ulNlOFJ+wC3Cemg7ScAguP8c
	MmSjbWfDMksK2xQOcoJtUg0Vacsy8xDA4L6dvZAqLznDlKGcSMtQs8IY+NkYgjggtv5
	cdUXo2mCXv4BB2tKUnY8esy7VvSJFz9pM+eMdzXw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659232252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FIXR6DxYcBhZ5CQvEQlxO5evY7Bfrki5hfsab0dcqP4=;
	b=ZVnbssOW32nhRbRoMDUZv0ee3fNoSYnUF12O/DoYbddj8QKQXJeZPq+VF82SiLfF
	mYgfYJ2Hm6ZPlknQ7B9ROjUdE0F2ShHkO6sFXvKPmLqtK3p9HhCW/BmYL3/y18j5vp2
	O3mEfF+utlYKDtf5d4/AW3DwWm1B922YJSYwREFE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018251f2f29d-49ce8d33-c2f4-4fc8-a421-80b8cf66b283-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d08adb7182cad6d3a3dce662bda4dea47a114739815dc411fa8f656a8ab1715d
Date: Sun, 31 Jul 2022 01:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659232252
