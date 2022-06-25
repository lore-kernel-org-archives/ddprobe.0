Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0508B7C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 21:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656194212;
	h=To:Subject:From:Message-Id:Date;
	bh=3xPUHfMvX4rgzNy7SvkQqmn22ev+WABLr3xGIq7Q8/8=;
	b=Y/FN0rQSmABb2olSzgg6QJ6QBUMPHXxxLHmWYBHn9JvfAaF3tHvor3njmaZRivdW
	iQuYgpRidAGxi2FgTi75aecg93rXPaXdqyOntDaXksmR1Dzu+AWsduxTSUlG8YZkmT/
	8/no8ZLdb3WdpWgpjm+kGh+SHN6cyEOX6THV43gw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656194212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3xPUHfMvX4rgzNy7SvkQqmn22ev+WABLr3xGIq7Q8/8=;
	b=BnJiVaFOYjPb5/yrKqPj4CkItgO1yb7L9AsLo8axTbil7SZhn82dbJyIG30RPFPf
	lHUzrlxpXF3UxV+7jEhn08B2VhpPXSHiGuZsu04mB8MV6XNeiV4cJnZtD601X9StJ4p
	ua+iPL6og0umZEirs14G9yHLvt8vd37cdu78nkMk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819cde21f8-6b62bc11-110b-476c-8cb8-8a6786689f7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 613e62b5d5fcf009a4059a2e0e9eb3e873a471842ee2f72bb354524a84ba6140
Date: Sat, 25 Jun 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656194212
