Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D67165C
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659597652;
	h=To:Subject:From:Message-Id:Date;
	bh=hzCHahRXJ319oNrNgfXfmVGctkmIhetQP8lP1emxAB4=;
	b=bReTeJK3kB/M1PloqTH2ieVkLG0HEEsrAnn9fT+Sg+tmSOMRw9HFKnMkq8HWOkcJ
	8VFMEcjhCmiKaQ5QkFCoWKv59q18XDQpdgvzTGoD+Q2QSMJyIDtEb8Wq1sDx34X8pLv
	UcbsG8CT5eVBpqDbKYAHd/DYL317HtBtdV1Snn9A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659597652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hzCHahRXJ319oNrNgfXfmVGctkmIhetQP8lP1emxAB4=;
	b=bgLSNaeHFgQFNnegCwAfNf99DVrX64DDFuKO9oD0L7/8ABSBq46sB3lW4G4aQIdt
	qCud0FS9dE/Qm9eeAThW3H0U+++GuwMi75gtpqnW5G/1T+2zvgx3xBktFMTdnlbqkUE
	v+gJA89QIesLBqUqfNsngg2qgSozs3a1R3Y3E318=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018267ba824a-ac668f6a-640b-4c47-87f9-ecb7e130db89-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff545ac84dcf7cc5d8d787ab41ae37b1b90540ffd85d197047ee4fde08f9b3ef
Date: Thu, 4 Aug 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659597652
