Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E991FBB
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 10:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653735299;
	h=To:Subject:From:Message-Id:Date;
	bh=fMPS8W/ODluj8cbMQsWC7ogVGIBRxLA6kjIQ4O2sfX8=;
	b=i9P0+1icUcdnR94lU9DoQvH8hrrJKfT8u6ofEwFFhUgsumqu7HiwPcBhIu4aFZOz
	skL5l6EseOSOKr/Azmiq0wlVW+i0gitmLPFeXri38VqzlLg+2tBle8ChY7HtFe3ybN1
	VFQ3l+oQ8Yzz4H9AszUGCxDTnuY56iEc7Lggg1ig=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653735299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fMPS8W/ODluj8cbMQsWC7ogVGIBRxLA6kjIQ4O2sfX8=;
	b=LJ84+wPneuLpwCV1lYFZ+xzx2QE6iWAoI+8nBDe2S2ZBTzPm9f8zyqWIQ7D+SW9q
	+i46MrgBSRlEgP5PtVLhqTY0QVO7ZRjYYwyLVdoWfq/boK1Da+dMG07pvgXHlRnB3b2
	XqQaxuEY5BcVACITI9wosK2HzD31r/fOUJzM7e/0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810a4e18d8-229075d0-ede3-4824-b6da-36e100f51ed7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfd52804749b37217ba6913eb24fa7b8b4abe62ff57f25b91f455e52db63ff11
Date: Sat, 28 May 2022 10:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653735299
