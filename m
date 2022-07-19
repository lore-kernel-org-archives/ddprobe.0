Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121211C04
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 13:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658236612;
	h=To:Subject:From:Message-Id:Date;
	bh=yXpOqLakpwqEU6t1Z3NJRlWBgC6I7k2Wa6GqNhzK450=;
	b=ZrcETkMh5tox7D4vnp9p4uZ8kXfiUvmOEpDRPGRm++tE6Pjp8od5b28sZue1DdSm
	Th9DchaOKJXzxXNtqNSKTkHe1AbDH428G1+eXckq6n/9IQ3xkc2Y4QkCd5UkrXAZqUP
	yLwWSZlXNCLRjriSBgCNbufm20SeZRpZ5SVXjZ5E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658236612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yXpOqLakpwqEU6t1Z3NJRlWBgC6I7k2Wa6GqNhzK450=;
	b=MvyRHqoWzwzqe7+JPGy3NF+XKhKyke6teaIfDMd9TsKTneiNXrmfnPQvEJ06HO2d
	y9Sd2c1GF3HTdwpAqZ0Nadfdc9JPIbVl0+EDEoYoj9dfc1IaKALF5d/odc+MMOi0oCa
	9nEmh2VJNru+qy47mDiv3fdkMzG4d4vQ0t3WOinw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182169aaf04-cb64bacd-2fca-44f5-9810-788c6772c7f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7592d873f5bd9544535d2c1abb7dd0259e1dba001776d1fe2e0777aa43c72e82
Date: Tue, 19 Jul 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658236612
