Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FAD84A91
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 18:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645986384;
	h=To:Subject:From:Message-Id:Date;
	bh=aIxeT7G2xkHO6hV7LwVBjGmMeovaEanXC5to9J7rx0w=;
	b=XpWtrhpY7TI8p9UWmihAJV8Kjo7nA7ydZRC9HQ0WLXy3i7pcccn3lheJn8gchfoS
	Qj4jMDg+KgX1vBeoWT/Om4B05ql+5VuM8JQfGRY7DLUat73g5VGzpkM4GvZG195bBHo
	J2RltIU4HX0eEh6ara2Pr0izrYKXwgnr6bOvJn5w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645986384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aIxeT7G2xkHO6hV7LwVBjGmMeovaEanXC5to9J7rx0w=;
	b=WRZb8khJ1qjF1ewgM1QDXFPdzR/zXSAVnlLTALmuye8gr875r07bWHyxQ+yPW+/I
	oIhYbEMpgP771Q3pBLo4BEDMtXHYHNE/sQzRq2M2DIkmC5XDo/ixlrorSaZbKH073Zt
	Jc9jfp2F6fztBuypaOYCbsHnHiQ5yThYU1JxcHPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c6f0b6f-db8a66c3-cb67-4f5a-a314-ff89d9b45bbc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c653c35aba9a75cecbe6afdea848260f24689c02fe74e637f2508a51389c2c02
Date: Sun, 27 Feb 2022 18:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645986384
