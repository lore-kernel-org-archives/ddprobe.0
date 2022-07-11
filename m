Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591AD2F33
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 21:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657574812;
	h=To:Subject:From:Message-Id:Date;
	bh=0X8mbyfNcjWOBcQfOuhnKc8DesTnCErjKWAmHKFQMJQ=;
	b=kA29cw6CXl8tqf2UYmYPYrEN+dsPfReu94GRrhO7nrKFJNhnoToZJTvNACVXN53c
	+juuJuTG9yNfII4CgrsNbXnQIztvMt3tzbdHl0NuTW01HK7J/MrHCBXtMIPRJjN6Gf+
	jwmV6G4w4KI1TH9gRH87Ru9CplNANCPmGrER1i+s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657574812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0X8mbyfNcjWOBcQfOuhnKc8DesTnCErjKWAmHKFQMJQ=;
	b=h3DX2PNfup0dNob0VsRq4xT+Wzx/4OjUEiCLaNdiB/8p4yssN4upivmcn2+dYLZ6
	al6NCeDkqyakpL/XG8ZJQBuashUNDBUEAIb0dU1l/tlg79EDBAPR9d/JtR+QLv6DSWP
	OUzWjtu0+wjnwyRU9TuwX1oWv0Wwkh64m7U4MRe0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ef286ab3-d1152a55-8f70-4d2c-9c41-136bb9abba12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3dea006ec9a57487dcedc1d5ca44d587c221f6acb0a72d817bf962334aacdbb7
Date: Mon, 11 Jul 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657574812
