Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D5D1864
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 20:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653596459;
	h=To:Subject:From:Message-Id:Date;
	bh=foIQca8kaIzAuJZlu1QGhMiyfwjRB6EkrDINCILbl8Q=;
	b=iCjSZYu4Uug7Xaz2fhnnMpCT0lWJUEBU81WSixxD0gAGHd66Pwkh4NnHQ/TjUTno
	Lf/l/FjNGxTK8xBhJpUjxlCW/WEHbJINq20ZlzwDVDj4UPlOO+IigxlL1Mf0Q9Vg0Ff
	2hIosIjjZCurmHJc+aHy1t4+vlawgoZDu8EPgbVk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653596459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=foIQca8kaIzAuJZlu1QGhMiyfwjRB6EkrDINCILbl8Q=;
	b=LP/Z3xM4z4a0q/ELZgMMoC8mk7rKdHsT6NTI/plQjquJdL2kAh3F9w2+fyQ3pK70
	N4bpt+66CdRAO2tyj2cBn9xBHw5hzVDgYRMsjOtq4NJEyCeh24+IHf/TVoQvfahnVXk
	B7W3m1AVJhGh6iu3hDiTGKqYuX8y45gqXKUFkx4I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810207914b-cf2b113f-8dd6-48d2-b591-4d9feeabb5a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97040cc9d9cce0238f110b1644bcf943cec1bb129d3038f4849edb9a497ff81a
Date: Thu, 26 May 2022 20:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653596459
