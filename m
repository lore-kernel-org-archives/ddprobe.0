Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C7320F3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 08:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656317812;
	h=To:Subject:From:Message-Id:Date;
	bh=iogDSy2CEbyyAuFizHqJUz3D0RyDPJ2NbpW4EF7Yi7w=;
	b=iTbMsiHlbSarxxA1iUcv5s9DRDAd95lQJ7Kg+LocyKf6jJfAhDlIjHUFCsvHqmrF
	qTNrdJb0YAbQg/mY2uJm7oA6hA5QdSS4cX0dmszcu3V/hvON9Vyz+xK1a7KlWn2hdcP
	8utj3orlvU4ZEByucwGY9vXg0Jq7ruTCsCneZSww=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656317812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iogDSy2CEbyyAuFizHqJUz3D0RyDPJ2NbpW4EF7Yi7w=;
	b=NPOltFAIVp6S3zClC/xY+qL5QAtPA+EEt/RSQh89wZv6kCam8J+9bOWG4XlwlZnK
	zr5/Qp6trnDWCjqsozGaMNzKFgWkIxwYX6LZ+XuQIBaBheUSn9BDkUtfHlteskFFqoe
	lTVvZUFu4QzDYJmfO6fWuNOuZfQfo6bXXFZ95qJ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a43c1e13-2e6b112a-3cfa-47af-b537-f19f86ac5c98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1c748de879b6629ef56f0256819e8d0ecfbc0ca7f0badef5a1d12d4895d631b
Date: Mon, 27 Jun 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656317812
