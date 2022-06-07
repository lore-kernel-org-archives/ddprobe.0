Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70BC87F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 04:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654577939;
	h=To:Subject:From:Message-Id:Date;
	bh=z4HZ7rbDrsHZMKVZRPjcuk6xDvG5kkbnrhnskWeLLSY=;
	b=DUkB/6nD7i1LAhAo+qGuQ0VQhenhdr0jqx/ceahC+SRd4utVr2MpWxR+BLKQGVIs
	SuRAIDhZ06+mZ8bpzlxWSQpaLaTQYhjgx1vDb4+bBICOxYL2xKxLZEPLZgfcuGPiciL
	/nzWuz2XuVTwoxFsp4Nz7ESsDbE++heY8SJsdi5Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654577939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z4HZ7rbDrsHZMKVZRPjcuk6xDvG5kkbnrhnskWeLLSY=;
	b=YDdlb4ihuyBr20+i5Xn8lbh056WRycgGiGx7WX2rbQOE02jvMCTSCB2YJKh3Msms
	L0M7YTbEzPxCpxSRpTgXwnYHaEr2xbuO8DU8xZnt8PTXeuUdMJkiQf3xTNLKPet+mrb
	HDZ1iUr2Cibk2x6LUBliQaz/n7G7TCB5B1XX2agU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813c87c322-6ee490fa-0646-4572-8f84-864ab6e1e0e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d40ed4230440e936f632cd4075b08a9149c79cb13d49f7e2632c4632f0892d5
Date: Tue, 7 Jun 2022 04:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654577939
