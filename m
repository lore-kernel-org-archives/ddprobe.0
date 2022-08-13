Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67BE67EC
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660381852;
	h=To:Subject:From:Message-Id:Date;
	bh=f1Dy2mVeWQxJlXCGdR13BG7B6qg8il4J8Q0rXS3hNKA=;
	b=GkFYpSOGMVeczEv85DirZu6dhPX6aeV8gXIydP2Y7HD3LMTN67M5JPfwy453Vi9h
	MpEb7dB3rgwQDUSKKEpMDbcdUyhqVctJu0xhFVyET1tzvV2pUIN5uSkDWoaDfLjq+xo
	PwWMfnVgKbBKVSeLvt4fmaXwz9r39IeQQFttuKgU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660381852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f1Dy2mVeWQxJlXCGdR13BG7B6qg8il4J8Q0rXS3hNKA=;
	b=AJsm0CDgZUEk1iQNTYogJ0O5iUmd5TvE5zCCa9zjSEnIIRnfGhAcw4/ZOO4vxeCe
	4y6EXP/9wg6DoTWuMBA3gVq9Pg4rql4/YjfGWor3edqav9BqQQQtVkVJuUajZJwBb36
	e0lTydKEtI1q859XQWKjsHyFm2q+rgTxXB/gAPP8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018296787384-f6fe2b6e-db18-4066-b759-77dcefb7bdf0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac5de48b31fdc0460509d2636ab4afefad36550b1aca7647ff7568f73f50fa67
Date: Sat, 13 Aug 2022 09:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660381852
