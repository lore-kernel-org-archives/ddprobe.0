Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E02435A
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 11:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648467958;
	h=To:Subject:From:Message-Id:Date;
	bh=CyGzd71KUJNIXJJcsqh6Bb/ppvV87cQkU7xIIqTXV4E=;
	b=OS3mx26qPI/CnwRlp+thTcSvMAs0DbTLYPZ7pooXVLLQ0SeLrAaPNSjQMDVpk376
	F6dWgTQbOpYcBcawLdyrmfi6p2UkLpY2XtcCV1EdMHe3Dksp00uePe2zN3nLD2lxJaO
	b7QIbYHwFxJmL4YDdnVf/kpSH9xGyfY+au38NNBw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648467958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CyGzd71KUJNIXJJcsqh6Bb/ppvV87cQkU7xIIqTXV4E=;
	b=H2XrEKE9ELbn34uZR5A99rCT+jfYXNeH8KUCYUPj/yfUgscfm4Jh2QEMUuZxMUwG
	BM1vWONf3+Q9q5kpcTtUmP90Z0EoA4NfT/mzBUg6xBSBJC0GEZt/WuubO3sW1ozGjfN
	bPtZk5MTzPDaNPzC2jTsa+Fa69VFJ6dDsT0CEnvU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd058d9ff-21571c16-4c82-46cd-b13a-29a851161bef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1453ddaf99b79493d03df56a09cef37c20cb913942e2b81d41bdb2df68327a8
Date: Mon, 28 Mar 2022 11:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648467958
