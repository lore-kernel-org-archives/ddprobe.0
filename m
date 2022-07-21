Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19AE71FA5
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 02:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658369812;
	h=To:Subject:From:Message-Id:Date;
	bh=RLHq7y4ijbUTi4yHKDu/1Cwhfi+UdLf7bWM4uKKKWDI=;
	b=FxrSK1SwxSp1kCjs8VwUISbRwz1kApeK9Bt0E71Jtxq6fGtLR5kEGoz95gtfJ+vg
	Jy7fHb6V5wzrXKWcdCPNf4ni8Q+x6YrvxoBv6FSoN2b8CbclRTvIS8qy8cEgY0J1gNd
	Hb4ngVQ6jQoCUZ0yJQLrYj35Nux6/afr6oE8ygLw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658369812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RLHq7y4ijbUTi4yHKDu/1Cwhfi+UdLf7bWM4uKKKWDI=;
	b=A6htNauT0z/Xlq8iwA7x3tAtw7aPP1PpZzln6kzrW6j7SuFHOLbXKTtLd6xQ5PAv
	vfkR4zffM5oCxge1qdpFoOhnJ2N5rpyWnWcto0tqah3AakKDqBHBDipQ4td0HB9rRXe
	jCTkxbXBQZupB5ONd/mDDul4e6gMP198yFGpsEPA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821e8b272e-2116835b-abdf-41ca-b76b-dd4d9a5defe9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 345398c3a675ddb60ba856a0b610caa974701e3b8288551a83c5b54f206c1ade
Date: Thu, 21 Jul 2022 02:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658369812
