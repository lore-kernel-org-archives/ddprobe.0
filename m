Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C07323C2
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 08:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652169659;
	h=To:Subject:From:Message-Id:Date;
	bh=oWbHW0KyylUy2tWEHpIPsTjWi9UjUhO6HXo+yA1K2U4=;
	b=f6CyNmGVuUZufun371zI/3ddOVQKAWaLzd3dLQtRiTOKn0NNg02zkF4LkguPqvDt
	o8FykQAmea7KTAEusVWxepxWXqx7gM7JUV3ZnFqYps2biL58fNF6YqSLaMs8apuHbZr
	C2u2KUxsTin2b0KV3Oy/Hy399uQymLmAyjbGz9rI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652169659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oWbHW0KyylUy2tWEHpIPsTjWi9UjUhO6HXo+yA1K2U4=;
	b=gVareXGzUJ7C1pKcUEyEsXuZ7AhRRXRn1dKaq0yFcpM1+dDkQTzFDmIR/RRO7Smq
	8q7nr+xK93i8KOvNP4l2n1pOj/I7kkQtM1ucAnlTygNisMJNce46JmY8LGFUoZm/g6P
	2WicgZYJcnhQwn+Uwe6yW3I8Z8pK1lFEol2LQ+3o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180acfc5350-b8a059f2-6b91-42de-85a2-5fdc49c79323-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88dd91f74b34ba9f855f6edf651719c29d76f8ebffcf2e8ed281958aa58a617b
Date: Tue, 10 May 2022 08:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652169659
