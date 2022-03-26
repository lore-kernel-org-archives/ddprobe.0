Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AD33D61
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 19:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648321258;
	h=To:Subject:From:Message-Id:Date;
	bh=2b9SwnpxLTVxsc64FxjRc4ir9zM7lMMqcdCyq0cYDco=;
	b=a+TkhyWpq1ifWhOjt660pozy5RAXik8PidFNTQGwbfb5AMC4GjAaRhPYsdRjw/dJ
	9g6QhtP8Ekdq2JtUjMBPKftrqckfWtgXIBeNQ5ScpGJ/FRW1GbcYfbECVXF+b13xxnw
	wEihIvbaMCCmYtE985rYra2jdZ5EMaO9z8WAtl08=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648321258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2b9SwnpxLTVxsc64FxjRc4ir9zM7lMMqcdCyq0cYDco=;
	b=X6aXXck7E347u375USL6WSuDy9+iaiDSv2RruYuO/qA6/nysTkh7rqUxVbDSwRrV
	PwanYhNCTw/idyhVFcrtumNGa5JZ+KpOLaOSOaA6udsPy8x0VmVVMocYSIwOqbLrMnL
	e2z1V6Qp229R9a5unmvrhIDDSa/Q8u6GN/Rhr1Zc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc79a632f-7682f80b-075d-42b3-a32b-aff053dcc872-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2194272b2cdcba845182b512e5044152ecfa63a722d281cfb0eedb5dd2b60b6
Date: Sat, 26 Mar 2022 19:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648321258
