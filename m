Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95B8362A
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 02:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647136884;
	h=To:Subject:From:Message-Id:Date;
	bh=/lSX9Vl4mKkMFP+3pqOnWKE4NciH6sKxUMEFDOWwUc8=;
	b=HoNDARv/ikN1Ld3CRA+BCBdgmRzetHSTUFi5HYVfOoWTlUo/NvNf04V1M9uoOkrA
	uwrZlcuzjzWnJtOqZ5INVzL7H/syDplASN9D++plKDY2qW2Kc/2eqvH0hWrI/g8JaLn
	DPr0UpaKMjoKsosRZ5/PaKRz2eQBLQ0gkfdH4wqc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647136884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/lSX9Vl4mKkMFP+3pqOnWKE4NciH6sKxUMEFDOWwUc8=;
	b=GnZewaFIJRlGD2IFWDhTEFiaActhMklLAqfCelVKtwq8fW8sSqE/rFtKhh6kQhJB
	GtADKllYpRvcXihC7BtfhQvibJSq8wQ80sRDD9Cv9rMy58/RCHmvky6GUpelTnwfTls
	8mCCgN+J6tQ5e1FLhX8KnK/JssLR3x+SUG3mxMy0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f81024826-6deaa0a2-c7c8-4ef1-bb99-546850376c07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b8526cce5e1fa4dd37dabf03e38f42df711ccf4e7e140d227a9eb6cb034c810
Date: Sun, 13 Mar 2022 02:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647136884
