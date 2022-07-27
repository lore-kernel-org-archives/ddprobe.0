Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 927CB7A
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658937652;
	h=To:Subject:From:Message-Id:Date;
	bh=JP0NsiTJ7Si3OkUupP9oh72aDlvFvVy6Kw+rg/txarQ=;
	b=OPSxBDzhPWmc5LPw6oOYNQ1pbR69dvDMX0YTLorHTwfMx1izo1mhbXMQuOYpiVj/
	iPCp5E5JUln5pQNqylDmz3SJFX1AWjhqpwj7579+MV1ipx4D1tzQ2HiE4kAgQVkKDcW
	siwiT7bMRATcXn7QgU3IMT5qYw1fdvYoMLnNfZIE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658937652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JP0NsiTJ7Si3OkUupP9oh72aDlvFvVy6Kw+rg/txarQ=;
	b=Yi+qZwNY9yPjYf25L/gOMsWdgJMKLBUii7YR04nvseUMr3qB72QpyIVwAmEwHrT3
	V/MimwmOmHutPbONulGBE/C47pWJxBl+ML7NADAZd2p+jFMjWeFe0KBMnq/1ItO2b3e
	wyhfjw/W9R6exkN7ajLycch3V4wz0U1PYjASOOJk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824063b553-8d8d54fb-5ae0-4a8b-86e5-3ad16f22f6ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3909d0504802657b499ba8f28b1ede7df2851aac4a366138ff1262d6cefb2bb1
Date: Wed, 27 Jul 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658937652
