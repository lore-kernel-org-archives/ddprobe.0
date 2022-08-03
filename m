Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187A47F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659499853;
	h=To:Subject:From:Message-Id:Date;
	bh=8pCkk4oAxDThT3LT1km5N46RUBrUc6AJyX/JyFxwKTQ=;
	b=O7AQ5nFExJm2c+MTqI+mv6bdMvJak9HuTbQEhtM+wS0R7Q8mvkTTrsSLtEeWL3yj
	w886504ywMYRHyZLzYNSi1LF6Q3s9ydLpGjbHyed49m609N5/RFd0QTD6BcTalJa/kI
	++WYXm1LuspJRLnsLGzVVskZ14NVnT6h9rhoIBPc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659499853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8pCkk4oAxDThT3LT1km5N46RUBrUc6AJyX/JyFxwKTQ=;
	b=A8O2SNmkmvFm7B9CJbF8fQil7c64VxnDWjeIxGGQrSbsmshO9CyGbrLB21x3su85
	otU9njRW6RGdtYrRi9bSEyPZxwrYJPdXKEmT1Nko/tcPUnaCLsOXnweSkOPbOFaPUCr
	/AM9XOrf2uOjNKjoZ3Xz69egDnddNYUAiygLCa6A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018261e63317-8643cf90-7792-42aa-93b8-47d3f88c0e11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb279cc554cab3761d0676eadbd3cc71c61c6e8d8e1c8febe60598f4f7895d3d
Date: Wed, 3 Aug 2022 04:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659499852
