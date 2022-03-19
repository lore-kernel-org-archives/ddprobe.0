Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABC357A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 03:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647659484;
	h=To:Subject:From:Message-Id:Date;
	bh=5LLBzTFFsxDzyj6zy/5dknjeSCSMhQDVTLC/mtWODGM=;
	b=I/e6Jze8akl7RytzrPtVRnGijhvQ1zpcEqlBi1LHNYwMWiVVeGNWaxTjWIgyVRtR
	et63amsWiENdk8GMXrbX5lXUeend0E0fYVslgT1YiCs7FS0lOkksJkSNKGIjf3UJc6/
	DhBsTY+PBcS2HaFkzfVLltZY3ykouNLGFGFnnBWQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647659484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5LLBzTFFsxDzyj6zy/5dknjeSCSMhQDVTLC/mtWODGM=;
	b=g8DqdKcjsfX1CYXiOW0n0+xbh7K80cRsxmCRTJHL/SA56qd5XZslC0MPKM3ybY9Y
	13kPrdjsrqxGj0ezN6XiCrDHlR9pFW0XrUJ9eDeMJ7LJhfum7vntgZisk1DEWUy0zru
	/9+Rszmybhi0dUe24q0NzhD50jRoHzjF/9DLmgLs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa0288696-ffd20da0-d555-44fc-86bd-7a5e2b89f941-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5e210d0db23a855d2c0ac372067df3e672141b4bb63266d248f698ecd2945f2
Date: Sat, 19 Mar 2022 03:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647659484
