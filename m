Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E81401368
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 09:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653559199;
	h=To:Subject:From:Message-Id:Date;
	bh=63AKmJyhUVPVhxCCwme0DOlmlIDMiC7TJdE+QfBPHHc=;
	b=EEghn08W7HBYImAg089r5glWvnNsO2X6Fb23xXi8YpkTa/NzOPGSaQwrVjthlHkB
	dVv0ZNv3K3PDsJvP99mdHfrdM4djKBp4qDt7wvohLqkR8fS8aRmlnRqJOKYsFekSbAi
	8mqYNUHICySxSCmcZudzEk2YhSrPdG/dTlESmpr8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653559199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=63AKmJyhUVPVhxCCwme0DOlmlIDMiC7TJdE+QfBPHHc=;
	b=IZ5OTE1P9LlwAO30Hqsw9LzLOHKwWZV1H3n2EB27WK/EL4iQDA5LP5jwtc122UEo
	3LGJpXONjJnvxaxrofGTiQV5lA88oIhX1EnccdLprgPecNUjVxTUsC8IYbl/Y4jqyeS
	eYDEPQ0Yetn+H36rAw/FUvKSLjtmQbTmALuH0NUQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ffcf0605-f6979761-15c9-4977-b87e-98a6af038afc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2cfb88d079247bd610b9e53134ae445e8a3c79449013b6bd15b8c66e2e388a4
Date: Thu, 26 May 2022 09:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653559199
