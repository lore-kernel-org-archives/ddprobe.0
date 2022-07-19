Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346A13203
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 15:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658243812;
	h=To:Subject:From:Message-Id:Date;
	bh=N+2bBaC3pTj5siVdJ6lrhhkIP3sOb208whOkS4fotq0=;
	b=hUwkGa5nxlWtYMBALCjUY+owM5lXPfffOk0zzmmkXW26czMSwABavE5iCx88HEYx
	dNsLZvrLX1iNnkj/Z5qA1LIvlMw7vu9TOQCn3FNbuNzzyXOmdi3Q6fJ+9i2Q0eAq/EJ
	gzJuY8rAeKNUzJHD+ilCh1hg/LQWvSzwsxaZ6jYU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658243812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N+2bBaC3pTj5siVdJ6lrhhkIP3sOb208whOkS4fotq0=;
	b=eqGBDfFtE89dKV64hlG6m9VmEkBg/QGGFjfbpByRLk7uO6DDhyB3VwAZylHcJqcW
	Du8b/k7eUQHOMTS7uLq1MIrz9fJj2uYM7PEZtr1h1fFhCzzYVm5Kn4HXEqQtPc0/jb6
	QPiK1Qv8TIvEKkSHOoQideMwOqSajpAy7tfd/P2s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018217088bf0-74e3309f-ea1e-47ed-ae72-462a80f6ebd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41cd732e4fb03d6479ce38ea785b56fe5670ec95caf9242f937ac753dad70b70
Date: Tue, 19 Jul 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658243812
