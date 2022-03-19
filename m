Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63DE55395
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 22:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647730584;
	h=To:Subject:From:Message-Id:Date;
	bh=8cdREzV7N+u8qFjX1lBqgvgl/sws5Ba31jaQWz8px6c=;
	b=Tbg7cFPep8wgjr0GqtFO5SMrug8Zq9cB2JMmciARIHlRt+RPADW6X3bpgiZqoeKL
	IysifwBEmSPWi7k2tnLZQOLQ4AXmielbbtOT1dI0HRO0+b19gRuyowcHPZaSeDLalSE
	8i/78peP6eA7Y/4i4zV4bwvS+iH4pB+0IFmAdETU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647730584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8cdREzV7N+u8qFjX1lBqgvgl/sws5Ba31jaQWz8px6c=;
	b=f3SaKrI2gAVZzBwtl76hpacCH8po0u84ibUwwX7B1rSoh0r+N+WRAwz2YM3op4A6
	6JdE2g/SC9iieb76tjWQdYEzPuglsJ0t02/kciearfyU6oSYpOhcj+BIuaabvGD65qt
	YoJd/flVy8WlZHgXn3HUbtEa0JKbJD45Wp0gbMmc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa4656ca6-c99443ac-fee3-4188-84fa-bbb9d10412f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 223b23e7b50aa2dda3b731b5d7b1037e5218ac9ec86914b2c14faf4a4d0e70bd
Date: Sat, 19 Mar 2022 22:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647730584
