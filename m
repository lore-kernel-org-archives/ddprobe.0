Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF70B7C
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 19:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649015758;
	h=To:Subject:From:Message-Id:Date;
	bh=ENAImXzzgsR4Afi00OfJvwubIaj7HxzoGXuT61m9Vxo=;
	b=G8I7vZzaWM9DhwG8ZpVjVGJWCZDEnB7oLk+TyKJpXlVgR/wWwjPB7HfRj1Smjvsk
	4Wp6WQYZcvncwShiCgcQay01OZrjgwqYWqBZK2+IUi+Z6J8r+CeegmpHHiuv7CympV6
	XCKmQ2sh89lurvZ45moN0Wxj5He+jP5zmokWq5/A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649015758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ENAImXzzgsR4Afi00OfJvwubIaj7HxzoGXuT61m9Vxo=;
	b=ctF0MLpo1o4rDDGwT2XSVBS27zCXCZEYYhIYnhX5VdgwJK7+RQLn7pUlASdU+C40
	AoSPq+HUlHdNC7ywg4CkV3ov+GmypWLATiAXQhOhiyKW7lQWnk6IFTIkVOlqn3/gEZs
	n8RdNixjp1mWQI6QlNiDORuaIwRB/FNf4KrTduWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff0ff9db4-ccf49c07-23f8-49b3-a963-786f0c1b1ca9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05028ddde0d8e01c0e044a50d6a38bc54d323054124c1e97ac6db1bc2973e230
Date: Sun, 3 Apr 2022 19:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649015758
