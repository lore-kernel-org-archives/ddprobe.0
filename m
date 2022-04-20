Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0579D1866
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 19:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650481618;
	h=To:Subject:From:Message-Id:Date;
	bh=eAus7OgmLIliYAHkU7Aw3Ojm1E6JXxjmSRfU2lxGeMc=;
	b=IGSbBOz//Eys1yVrFsYU26oi6C3jDjUdi8j2Kp9yP5nNRybf6eLACwktVnhCmEMC
	o46CJaml8lY4bKFmsOPI4rd+WJJfoJZZY/fkYp3PMiNablGktURCbTCUDWV9PjK2QBe
	o0GiVq5CusgLeqtvBff+5KJdWevpmDvWSKQ/DEAA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650481618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eAus7OgmLIliYAHkU7Aw3Ojm1E6JXxjmSRfU2lxGeMc=;
	b=gLuV4e3cB3vJtyHbRL35u1h8i1V59bA385UKXNi9Qvz17iAgG+zuPVAUFol3x+Dd
	snoxPX/r58T+54aA3O30ninL1Y2ZLSUoBJlKMq7NlydatA3bu40HQDIEB1miOGBVd+y
	WRkff/32Hjq9JYSsR1u99qKw7FVkApGgdBHY5wPY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180485edd5b-a196691d-f438-4d03-8e4f-3f70e2280256-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15dc93bc14be68dc29989cb72ce29bdb7dba4eacc511f9d34b223d65d3d2096f
Date: Wed, 20 Apr 2022 19:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650481618
