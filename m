Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1EF7A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659055252;
	h=To:Subject:From:Message-Id:Date;
	bh=37qexLUNlMEGmfUJVnbvt6LiAIb/iPyuRlkJYZpp9qQ=;
	b=iBank2uxj+Ex2dnHqkBimH6C64aPHVM6UIRYbP3YgkYYZSuIfxciT9s4JUB6jdAn
	Qr2s+5gOtZvbREAq8x2PHjabwsUFc/t1qKY0vkosrzdcP0cESOKcJ6C1ZIjZ6q98VGL
	7GTtV3bRZTZvZS0KGwi8UvqIgYsNuf7WqdJaHst8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659055252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=37qexLUNlMEGmfUJVnbvt6LiAIb/iPyuRlkJYZpp9qQ=;
	b=Na0E7g/ipe+T3Sx65avOQegOIU9m5U/L16beRiWtKtSjwaH2fRMrD+6Qlkf926oL
	z2PQ4dtKUQDlnSZKBRQK31K6kxEk3uFI2CpXOlWnEOUf7TnmMIZi4B9j1k3KIvtCY4T
	9y0H72hdx3Uj5pLTg4ete1JJ/5uCefHC0Y3Rv634=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018247662465-089855da-8cf5-4006-bf99-69aee09792a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1944b636d3cb215c5f6eddf3f5e5c65f70b9ee04110ceedd8a388f73534bac46
Date: Fri, 29 Jul 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659055252
