Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C47323F
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 13:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652447099;
	h=To:Subject:From:Message-Id:Date;
	bh=uufnCfAm8D4Daru6J0N4xkQuJE9rJGu7DC1iLzZl23E=;
	b=WnQHfrlrnbHKGRVksgmxbKDWOC/RkEnZBpcNiGvRjwrcixEKHsUWB3bMI5aa37Wr
	1EdMxWvEWm2qvv72YwHbLMLkXhOqgTOx++bwmJ0WpOJ5lLHB/jgo2j0Fgi4TFn2YAgD
	LBegxaeyAnSZUj0egAJpJyIb9KSs4L/tboXvMegc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652447099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uufnCfAm8D4Daru6J0N4xkQuJE9rJGu7DC1iLzZl23E=;
	b=XeKfhg+P681ESfhxDXZCNTXg2DbjdelIpdeEePnY5sd1j87wz4dIcSqWsxyPUfbA
	b2pdFpxSf2d81WecJgT/CUIHbl3LNaAGOCnYvp79SmBHGs9/CsvavowuxyeU2gDzjsa
	hNy6QUymPWv4LMHvfn3LhBe+EN7l3FO7KliIPGLg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bd85b9b1-d2370e83-af3f-425a-bdd6-0e2883ccedf7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 189c736a90e6819283488e1321509e7774626aef8ff34138fe17b828b71072ef
Date: Fri, 13 May 2022 13:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652447099
