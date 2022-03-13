Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AF3A7A
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 15:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647184584;
	h=To:Subject:From:Message-Id:Date;
	bh=uFsxwmjfsEhjeOG4iyzHfTBbCq1fvredQBNdF7+EWBE=;
	b=K69qDFCtYl5lWZs8s2gGC0YxAPb0VwLzXZSY3fN+BmIqHrcyVyTe+50MRC/N4gV5
	Nqk68sR5AovmTnXm8OapJQecWzzmbLlM9nLF/+ki/bNmZGTZ5bGcxf11TVmvTRILecf
	JQez+ziSUPnjllwmxRfCF6/ggJMvus0uykTv2p94=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647184584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uFsxwmjfsEhjeOG4iyzHfTBbCq1fvredQBNdF7+EWBE=;
	b=EPSIZcgKHDfb8RtvM1LEABtbOSgYX0S9xDdw7qRNkyEkaS8VDOVnmQVT6JIvcsnq
	YY3gmqaczjE4LvrLTPVswQuJt8HxLl+PMBFie1A1tMZkWpmLUPk7Sj5hrK8mRztP4xP
	FN1gr8myjrjLZm4LDe/E86oEs/4lbdjU0vKNiXqs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f83da204c-8b78694c-23dc-4fe1-a80d-7a6884b4b9df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5f9581f2e949f8119d15f63cda91c96bfed136d2a2f2baece1eb0d8f3dbd412
Date: Sun, 13 Mar 2022 15:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647184584
