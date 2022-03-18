Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A40C015AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 03:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647572785;
	h=To:Subject:From:Message-Id:Date;
	bh=ZY00jvXJH3MI6yjC6Yudr7HjbnL9Fk/6TXE/psylDZ4=;
	b=NoWIYeY6R0wlrh+Tbzh7iUi/FzbDjohdX/lnlOtUzHuy1qCO8tojd0s8iuk2lDCA
	ipJRZ5HGrANS4cfvTZ10a2n/KQdeWpflqInCNJi72TtudD+o+97tkYMIFu6GIWnil6X
	TAczL+AYX2sUOUNl0puMM8BF4p4kbWrfNM/36zxQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647572785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZY00jvXJH3MI6yjC6Yudr7HjbnL9Fk/6TXE/psylDZ4=;
	b=YYVjpvPVmx1qj2Q6kRmwOQk+zkKApSGJ89gdQEfdD4lYP0dvH+SGBrXWzt3TB5lG
	JhEcoyi2bcKFvRF2T3J8vd+s974s/haoo779NcTdhz9NsebQly2XHAiJEovTzjRvDzR
	fPlw4Ql35M1KdHFlOkFs9Bt0I1sGKgXMq4bLqhCc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9afd96b1-5294cf7b-9d9a-43b5-89ef-4283b936b937-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9fcce4cf389aaa0dc9e0dbe98baa398b5908f4a0dd0883d59e7536044d99c011
Date: Fri, 18 Mar 2022 03:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647572784
