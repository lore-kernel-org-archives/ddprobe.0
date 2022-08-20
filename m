Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1D033C1
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661025052;
	h=To:Subject:From:Message-Id:Date;
	bh=1aVu/DQEV7YFnUWJkSGMyMBZz53VXH6V2iR3tSnhh14=;
	b=P9YzJp5r93KkugjVTCXxMS3BlSpaL+bbMPPA5TKUsXXqOttRZf2F6k4qI5UdCZRv
	OmVj9u7q8Lr+moM7IzEJEYoHhKrF8/lrCwq2ywH5qIaQCudt5Uaddr+EbjH/cTvjO+H
	VT5S2PcRgMwK5aWALm2NmWbEnukBPN0qx/7WEjIs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661025052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1aVu/DQEV7YFnUWJkSGMyMBZz53VXH6V2iR3tSnhh14=;
	b=NdeYd9tewHecfkFQGh0clG2XzZnw1LafQo4zPJq2uo5ohzE5NRD3QYCxgUAOMUxu
	t8/Oj28VAT9rY5WG/g2SJ6YQyP5JnoQbkoIWfxYKXxXqTWXUqSHGU7m8ptzdfT7C1Zi
	ahPKO//xevIlm5FkJv7AIxRusipsi67fWF4BWZ3E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bccee7b4-0f4f7d06-93e8-435d-a13d-1062b9e43df0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93a4b616038a7ffc62088d03ebfea592c349746289151dd76d2b78dfa6e79fb9
Date: Sat, 20 Aug 2022 19:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661025052
