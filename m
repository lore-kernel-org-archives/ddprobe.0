Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2832010ED
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 03:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648094398;
	h=To:Subject:From:Message-Id:Date;
	bh=ocb7R1P0AzsbbmuhkSLysY+8pkkYTkcYPRJ/kd/4My4=;
	b=JU0SvlBwnfZ4sltkUcso0YJejj6h8E0lxbaNl8Eqd/qHWI9hEBNK6FPHCgWmHJyy
	ZWnoqd1fkHTknSwshxRRuCTEbiZ1N+zu1ks9jOjMj19cd7Mv1hJNbs6965rrdI0d+Rt
	I7pV5hgzyTdx6BsJ2xy4g6uyw2/bbEPGtsdZXJeY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648094398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ocb7R1P0AzsbbmuhkSLysY+8pkkYTkcYPRJ/kd/4My4=;
	b=OuemXDcl8LHQhxN437uoZxo+owtiz4RKU3S4xPa0+Opm02fy2vhsW/2HbYwhxUyF
	5thkAwAr8Vq47jHFR+A5O/d/Mo8O7tmEh5PiGXcDWuZWkVkrocxhf/ygJi6zj3YJpxt
	HS6oQMPj9i9+K6y2DLtOKMcnb+qXqGK2aBf4GWUc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fba14c71f-413eed52-f05f-4d25-89b4-6177fe130106-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e94a382ad6584f24d9d46f37881ce9b973c4e2fa2fc5889079e6d5f75e3f6e3
Date: Thu, 24 Mar 2022 03:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648094398
