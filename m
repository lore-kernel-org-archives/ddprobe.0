Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F48936A
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647860184;
	h=To:Subject:From:Message-Id:Date;
	bh=buol2chgfj2MNTYcgVqTU2GiHMSIOoAX0O7YIGsTu4E=;
	b=Vrk401UR79IGfEslsvVtFR6ClgfJnIlaIsKd9iZE+Vld2EkSZ5lIjxJlFx/JZ84+
	xsm8gDwC+twYvVJx92Z5SVC8BBfASvLX6pV4gka5iGHA60yZvPLcvKdatduhHDbr0hv
	AY2o5W53XKKX4YfHrAf7AthO28yb1pA2qyRGF1H8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647860184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=buol2chgfj2MNTYcgVqTU2GiHMSIOoAX0O7YIGsTu4E=;
	b=RBIUWskD3XZZ/esI5NKjcB+6dI2VlzpANXgUgNt1VrgJHgs9pW/yNX5xhpRgHJ4p
	sXmc74NYVhDATlkrkrPY+U3VMbyECY5QzCYQgDMT19tt4JBhJIWhvs5OKunzOT9/7fb
	P81aNP+LT1PI5D0nMf16Jg2f6EfQkRVXITmz1+y0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fac1ef6b9-6767b57a-a358-4ddc-b4e6-51590238a0f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78743fe29d84d17f9037304bb43f5eba98042b8165ea2ae4237f0f0090f3bbd2
Date: Mon, 21 Mar 2022 10:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647860184
