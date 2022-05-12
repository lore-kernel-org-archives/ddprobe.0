Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151263232
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 12:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652359859;
	h=To:Subject:From:Message-Id:Date;
	bh=jpcp9iQ9Y7dp3UD7HxWQAB6uhwt+ZKym91/pDOeoBGY=;
	b=RC3xIgsGbQ96Sze3zm6Z94DcYnw25/wqIqQjmPMbP1DuK4nMIqBmh8PyDDvKYLE7
	7Lyk1rVk6+8Ayxi7737+DC0lekAQqOZmx65xIj5bpdqQX+rPxDImw4AFo4Xjgvs8XCp
	2K6YqStjFHoaXwP0RI9jT1XvR+4VS0aSpWB+Qbi0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652359859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jpcp9iQ9Y7dp3UD7HxWQAB6uhwt+ZKym91/pDOeoBGY=;
	b=ejtfoR5kBJBoR2kgZ8yPZKM/WbF5vgvRAHXwiA3be58d6HwSPVkqh19W0KmLeJoD
	hJXuo0iA5iGWlwRQZxuqJGFgG/LqLtyDP3WIMru2qsSwufIrCH4rs0VlrvExPN2aRhe
	dTg5aS5jIjx0wbL+8oDO69di5fAbr/6KuPqtjZMQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b8528c5d-23ecac2c-5190-4c15-a560-c7b16c2970c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 679bce2e31f8508f6aa6de2f8241a652a7225732a1ee4443ea87328386788b96
Date: Thu, 12 May 2022 12:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652359859
