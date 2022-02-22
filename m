Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC9D2581
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 21:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645564885;
	h=To:Subject:From:Message-Id:Date;
	bh=DBKVEwgDqf28T+B9+PsBttzJdB6jRlJg7APkDXHr0Tg=;
	b=ZZDZj5m8ZY9lJvjVNn0EtkdgX28DOjiqbRGnGYRIhBGk+EMZme983pKrNgkEw+m8
	T9T4RKXFDBoNECpWta4icOia7kg2z2+k1j4aIO3Dtl+kJsUzPfXsOSx1on9ksW1s+/i
	bHt94nEm4vzMDR9GqPs2lCDtLGihwe0ve64ATpcI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645564885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DBKVEwgDqf28T+B9+PsBttzJdB6jRlJg7APkDXHr0Tg=;
	b=hIj3QmNCWoLppyx7qv/9HllFKgJ/5AbhJkxNq2fDfHfbDpoXcRn29Qsxfi7sKLev
	k1504hxqv/oHk5rguZgreSB8Rnu957F8msPtrKr6uMC8+sfQeCn5wpmn4K1s4MIatgS
	wma/S5rLS3fo76gd47K8KvJQ8mGazIWNwMiCLeQs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f234f776e-ca194789-23ac-431c-b212-9b105261b0d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a41e6321c804e7b04d12484783ec793ee306c017290277f194601f9079f3d02c
Date: Tue, 22 Feb 2022 21:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645564884
