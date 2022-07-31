Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E31115A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659229252;
	h=To:Subject:From:Message-Id:Date;
	bh=bS+MaSq/e1d+ioomxVrt1B8vstFTa4CUEkOV0jMrEvE=;
	b=bf1CTMEMuwtMz22pOYxW245B6N1taTQ4+SF2uxkiJcsgu0xpai8JzjyMi9HOP2BH
	ndefeOg9/0He1EDmKofavhhV4tVzHGHwNKCnAmBiSMUgnxYEYyPIywWH3wsRlm0fJYA
	yY78ua6eyNCP3vMUrz+eaBrcs2tR2k0lTqQE75fc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659229252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bS+MaSq/e1d+ioomxVrt1B8vstFTa4CUEkOV0jMrEvE=;
	b=St4oOvJnOyvI67hLODpuzgGz7QT5pcWMRbrLBc6GmN/aqP7DA9z5cAYAR12Xnbe5
	LhvrYnYpUqmUL+YGyCYZIjBKF6hxnz3FA0lOd4nOn+O8xUDlVNBmOxdF87+2xx//egc
	TR60YQYA+cXU+xLLPNa8WQvmmEPJ+X1Qse+qQYYw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018251c52bd9-7e162dd3-c138-4f9a-9007-ef19074d48c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2da0e7bb30dcc23e39b3b22e46c35d0d4f06284e6c662a7d6bebd79554f17312
Date: Sun, 31 Jul 2022 01:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659229252
