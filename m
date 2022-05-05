Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E451E632
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 13:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651758958;
	h=To:Subject:From:Message-Id:Date;
	bh=4rTODwrJbZrYL2l3X0kZZvZ38jH3vLpdARHYupG+yHw=;
	b=lUUC0iappJhFw8V0OpuG60N8Y5zNRpAqgrBw+OIWLDE3q84n2x8pt12j2UJ7VDvw
	OilcfBDpnEKqU3ENHHwWbijE2iAmAN5HnsAfK0Rc2t9XB29HhMa/ZVh1yw/3JLaPsQg
	pqEBqp/f3lt8Zqv4v+BvX2wqePvPDJsbweyOgnwU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651758958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4rTODwrJbZrYL2l3X0kZZvZ38jH3vLpdARHYupG+yHw=;
	b=S6CkVwhV17olJ2MSo1kvRojxuosjJS630ZNwgPvvfivHqitkjsDTb4CNlxP7rhdo
	qASkXTNF7FXQfcIrhCA/IF8nJwSuSsFiDxwwfJXO4RQ5HPvseck5qbvGA7ltKzpdZtw
	irJyDp7ulVH1gUZvzWAqdGQQy2Cq8T3U4+NJclCI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809481868e-bef1f2f4-6485-4fcb-a8d6-c07a47df0514-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3eefd4cad9de7e3fa86da1b91f23afae72139298944d72115069d89b1ff7195c
Date: Thu, 5 May 2022 13:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651758958
