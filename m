Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6D77B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 13:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655560439;
	h=To:Subject:From:Message-Id:Date;
	bh=ROJQOQG1zpuRiMCK/aPWeR3P2i5zgrx++rI6QgjYH+k=;
	b=UyC6h4DcBpdQrydTIEPml+q2+mi1HyDN3z1WyN4EI6WOA95jG0QtJOa7XVQgV301
	gmE+la6InbZj4yAsX/eIj+/Iewr+LRdaSp//hjIJCJMYapb02Q3ae9ZsTFjZyasub72
	jIfhNh9wMrrt5v8upWLeuXya1m6QWCJJHG3n25dc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655560439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ROJQOQG1zpuRiMCK/aPWeR3P2i5zgrx++rI6QgjYH+k=;
	b=OwL8Ef4yFDOMIptjM4XsdsUDvfYx8/TqUZGGnQSbtgTQMwyaoPAcs/4R6/WVn17a
	dycrm3rdHUw6YqmXlh/KLYRjqjBPSbaNn6pbzSlw+2cekf1VqS/xIUyRZ2Cgjv8cURl
	QJKzYWCPHSG+DGkBFN12wDbjhbPFgaiJ+ewhPWn8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181771785d7-a4561025-7d8f-42b0-8913-82a5a5abf763-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4450320aa070c202a268e89d216e1e68a628f414e24bf846e6196921e216699
Date: Sat, 18 Jun 2022 13:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655560439
