Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433201374
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 18:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650391738;
	h=To:Subject:From:Message-Id:Date;
	bh=wPB4ym8sOsqy92oiZJq6MfFjA9b7ckmETCoU6upFNpk=;
	b=KUdVmRs+zEVg4MRP1bMagNf/ua+lzH5n29OvPEzcjAJEP4ST5S4PcM4BuO1O/Ft/
	XU1WYrgeEmJ155HUsJhqYf74VNG5SBNFk+wbxeTl+se+0bzyv8UhwkRia8eJDgPFLeN
	uxIdqyCm4XBvuceCy9fXoRu0Dv4seKz+jgYeCj/Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650391738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wPB4ym8sOsqy92oiZJq6MfFjA9b7ckmETCoU6upFNpk=;
	b=NwMPqj3GuZ4iMaoYPS/ftIbVfc50DALz6SjzxQJyYX6p3GpyXzvVtPn+CJjGxwj0
	ZJgtJo7KN5AIff/l3rPmP5zCS0+dAYjv88vwScx8WgCBq7LpdkQXYBlzWOi4Ly17cyn
	rH3Irq16+EZoKEutKgohbNPnt+kExMykqmk87khA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180430367ff-8f846a21-72d0-4dec-8a59-ce142dbfbe4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31d43ba89c06a9c643652808a1809640d71c2bc57e25960fffbebe67b51faa4f
Date: Tue, 19 Apr 2022 18:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650391738
