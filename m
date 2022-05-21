Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7317D17EA
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 07:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653117299;
	h=To:Subject:From:Message-Id:Date;
	bh=d0ytAdKFu+D2DQw3vj0s+6zvfPTRE9x6aq4/O825ucg=;
	b=SRr7slVJ0I8XbftZ36pjvbK7jKWBPCpvMgN0xMQyMjEUeAePtgSFj7oYYTudQRIC
	ZH8ErTeKpqg2JqVl0Rgi0igATiu0ICBJKAEbAPPi1Hc+FkauUmejAg29G4aYTYUmIic
	UfUCsvVQ5PwEB5F/vBEm4wrYAoUgKQBEnGtTf7X8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653117299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d0ytAdKFu+D2DQw3vj0s+6zvfPTRE9x6aq4/O825ucg=;
	b=g3WLrVUSAapnrlHhSlQ31QNM5LouyR9XC9wiL2O/jYmYpQFVhltWaoaXrOguqtV7
	RTwou0EQ4yX0ZdRvxaKVp21KDzZFeD2rdFJXPsId8QRVgz/20TYaIZoJHITL9RuELg/
	Ia2thXcGiNISmrKNCd3MZ6uqgNLkmcTQN5PAA5+A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e5782a58-ee9b5b12-8774-46ab-9d9d-abc5e07c3c62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 448394f06e126604a45e5a21cf11405a6f8bd5121a272bc036ae36d05b3a3bc0
Date: Sat, 21 May 2022 07:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653117299
