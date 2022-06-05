Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF434688
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 18:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654453979;
	h=To:Subject:From:Message-Id:Date;
	bh=vJ/QxWEnvuDMfYU8UJK0TJkGyjm6Z2BCGzlMTXS3UQc=;
	b=VXv6haZX1PaGFRsI6Vzdbk+Bgyc38PLqxkC1ezfY3p0tlwZv4mHl1yA8yjYw9OWr
	i4boVgXq+fiSB5htKWpnOPt3ZtmXf4jCcJ/xJz2pBv766Wf2Nlz/b7jstW5Q1i5VR1V
	AqYtsbGaCJx6/nnj5Op1MgUdIIlXU/viOlC0ydGQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654453979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vJ/QxWEnvuDMfYU8UJK0TJkGyjm6Z2BCGzlMTXS3UQc=;
	b=F9QQL2TX/0k7ecaEwfD7qjeBslGgbF/N50IaXWidRCXvg2Y3epslcG0BoT6TaEl/
	o7aBZ7wYbbSQGIibLgKLjGKpY8Gh8hgqZ7B1fo6OsEMTIHalqGC0iekGtLbZ0FynI1F
	URghRqhAg1chZvM9WAq05NLlQxE+U9p/IDn7eh3I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018135244881-31445782-f49a-42cc-8a99-04c11c1c08ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40e46c38c3f76590862f3f19dbcabe060c515ec7a1477f0ade9174d463571659
Date: Sun, 5 Jun 2022 18:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654453979
