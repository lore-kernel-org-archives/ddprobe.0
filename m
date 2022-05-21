Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2101C192
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 01:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653097139;
	h=To:Subject:From:Message-Id:Date;
	bh=r7+KVrdUyqTuGNAjrQbjl/xhFfQlMh81vY8E0TPTjU8=;
	b=C5SAObQbFGeJRpked97/l5EUO09mT5i53JdeiGUxhMgK5W8NlhMHkup3zzVCwK1s
	w8nku557mbx1v7x/ZSZ2y2sQYI6nUXHluT9d+gMBzTB4tt19FQtU3kppZlrFqpXeORz
	GBEJ9JDqpAE8X+tiJ/Gp2C7dVWALPhbPjFloCIGY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653097139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r7+KVrdUyqTuGNAjrQbjl/xhFfQlMh81vY8E0TPTjU8=;
	b=E5Rw4S3t1zFvJv14kh7UhYzYoy09C131nz0sb588rFvJ/DuwTmq8wQj4PTy96Ath
	mK5AMaBQ4ixeEwrPxv4b3LiQ8MP4C4dFmQaa85Tx3d3Qr8zN9GBH7FIlRrqAuLXnMoo
	YlK6OYDSicP+CJoLOte3d8vwavSVXYDIr6cijyeQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e4448c70-f035f6e1-a23c-4037-b904-e5b951a16549-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2167da0992efad51a525e3681550309f59fb547a04301212a80e3ce219153e0e
Date: Sat, 21 May 2022 01:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653097139
