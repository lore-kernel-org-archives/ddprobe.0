Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C21F53BC
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 20:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658435212;
	h=To:Subject:From:Message-Id:Date;
	bh=71SI3xL1FG26w0z1qYapjfwT1unDlHFdAjzt9Ta1e5A=;
	b=EZB5cEQBDUC1fj2rUmdmmF+1vcgZCZbFrYXGY7WHlO9hKmGewDkHNXOqd45uI3ZD
	BtkJZR/Xpr2MqhhtY7x53+S/VIGF/d0OW9IVrvI5M0oNYwM6UhNJtcweWC9tuPVc9aO
	nocwuITjbA4xtxjX9SkUUVSrTDlyxab5IAdyHrqE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658435212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=71SI3xL1FG26w0z1qYapjfwT1unDlHFdAjzt9Ta1e5A=;
	b=aUa+YgeFL3GUBqY1NPPI/1R/2escbiljXrBNqkFNlyfWZ8WGQRXDHj8hhPJH29TG
	p8FcNoz1zSfimXXgNLvg30BUDM8zRfq716AgNDOqIyRJq7PrXco3Wo3tGmFClCJZ7jI
	R37+1pYGhHSUPKqxUhd46EVcerylaDot4ATU4Qoc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822271141c-eb73bf54-728b-4d64-ac83-1ebee743aa41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eddf094f7213bf0b11f4c99ce0313c9cf3baa4f455f3fc38c203392624d5c2b6
Date: Thu, 21 Jul 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658435212
