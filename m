Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B6D15A8
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 13:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658497612;
	h=To:Subject:From:Message-Id:Date;
	bh=uge4avPVe2xu2aUep+6ETHbkRhWbojfP7HfUeaXzRec=;
	b=UiofsBRTjV2cxEPe0yALDdPJW29por92IZlXj7Nuvi9sEqzbHY2EK04d8AXk5QbI
	yCpKHaSOywD38iro/SImVD+MeLSdSmXOrnYu6jWO+pbJ/WRLT7HTP2tcip3kh4jwFGa
	zJaCmjIG3BzQ1LWpl7mHem3zmEAlHos+heYRyj/c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658497612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uge4avPVe2xu2aUep+6ETHbkRhWbojfP7HfUeaXzRec=;
	b=hiwaeKPxDd07njDrtz0mZ4F9z0iRAxzjPUx/CGZI/xxHtRrAFwV3d/pn5lSQ7cR1
	M6R5N9mu6vQMOtd2IUVZO0NFr4p3fWtdgOnbh9u2y0x3Y/kxgVDy0r03HW1Mvne3yJC
	tBKKvpx/4OhTeHQZzO6hWb9aDwPJ8jHywL//j5EY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182262939d8-274b1384-d8d9-4682-bfc8-cf19ea5e140d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ded900df0da51a0124a82c6aa0b8bb39b47f58c69dff8e2e78a857bd27b59dd
Date: Fri, 22 Jul 2022 13:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658497612
