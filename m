Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9924A20
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 23:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658187412;
	h=To:Subject:From:Message-Id:Date;
	bh=Xe62gBP51aCXdYDzWYmEZFaE4dQzS5vPJ/sS4Uqk5MY=;
	b=h3OzwvkEH53dTAscmX6GIEEUiCPOifmqdA0tyv3ggsI+7p1XcsVv/CZ+iM/5J0DA
	qtOAUFGIfKJr3SzbxCr9B0KCjxZqilA1mbnt6gZZ7PdhySR++zKLK1vOeRhgBSRxfdm
	Tz0fNIPE7xRGtQ3cDYc8cVgRGlYfOB+Z8I1gMrdc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658187412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xe62gBP51aCXdYDzWYmEZFaE4dQzS5vPJ/sS4Uqk5MY=;
	b=jwWhZG+JjAkJ96onghGyga1XkDK/Mhl/FIfFp3yEnxPg3H07k/HOZFtXVsrsZgtj
	4V/b5Z8Pi216eQc7RZqeOHzTHnJWUFJ7aLc3bo+E7tk4GTuXhQNeRU3EgrDhD88yyfe
	A4WVSVlwoly9/q+r3QgJQsc/bd5eY8Hc/vjzsp1g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018213abf375-1383ef72-816f-4a33-9243-08b86dcdb361-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72eec873e02c281579832574eb082f488ce5045307a38f6bdbd542b8994f19a0
Date: Mon, 18 Jul 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658187412
