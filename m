Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF787A
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 07:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657696612;
	h=To:Subject:From:Message-Id:Date;
	bh=FpwPYiruDW842/yOCloTDXp5eP7NAt8vu9roWOrPg2c=;
	b=BJcsh9M/JN41l9c4PYHbnB7n3Gh/kbJu9GPerafxsOeB1RA4iio/ooe/ORIHsCAy
	FCaw6JJGgLlBOmfE/Qv4lEE+FyOq7cQKzKWYTXEbh8kIAe6bX0A+A+uqkMJChKuYwHI
	KwnHTZoGYBX4ubyh6Yj4/cO63fFBfO3NmCinarYk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657696612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FpwPYiruDW842/yOCloTDXp5eP7NAt8vu9roWOrPg2c=;
	b=BlWvwNKxpJiKOBFXUEOmnAg9llI82rt9YpkZi14ETGQ/fEha/SDRfSjfnxN28u3R
	dzF1RysaO2dz1k7WpgQDIOY3SCCWrpD02EQLGx+u7is1yxnMXupQyA0U5lmmyLJFc+1
	1RD+ZYV2cL4O3qJJxgsode82qE9zV8deE4Co26oE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f66aefca-b754757a-aaed-4ee2-b8c3-476324ca1cc5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c15f02c69af66f7082339b71fcbfac56fd386f2d3a4aa06a445a775e567dd0d
Date: Wed, 13 Jul 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657696612
