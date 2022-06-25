Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E6F23C8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 10:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656154012;
	h=To:Subject:From:Message-Id:Date;
	bh=wBAUXC0IAWdKhJIq2B6XK148NBXnOFp8Zwh8Pk+Dx1c=;
	b=WFHltXqLl+1nruhMsfORcHjuCDlZJj8eux/gAEfPyUlQg6nayJater0dKcod5vbp
	I8zZcUEon8l55wdD3lEa546bgAQfMqDO6riNit12S6oVNE8/zViFnI2Ue/tmcmogt8n
	I3TFqyvXvG29las8QS80QkEv6AIRdt6APEg/YLtc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656154012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wBAUXC0IAWdKhJIq2B6XK148NBXnOFp8Zwh8Pk+Dx1c=;
	b=bV4nipqV8u/3px8srv6Y+torV6qnMnblwunzU/1FGdVrUI/ek2wKxbaxpUsbteBW
	dhLj/wmdD9tI6Njc6NKs5HbRKcCZ1NUp0dDYHEoIuPAqfeItQmfmVnLkxo1rqVIG10p
	rzZ2ZfDu+4oIPosjMnj04OiZ5XYJQBManPy8ugF0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819a78ba4b-8d4f087e-680c-4f7d-9ed0-e15994c91507-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01c2426b51bef2d1223026eebe6a3297894958efbcdee5fb6c6596ce298b7a6f
Date: Sat, 25 Jun 2022 10:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656154012
