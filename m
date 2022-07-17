Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE0F80F
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 12:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658060213;
	h=To:Subject:From:Message-Id:Date;
	bh=BXFrX6mEoSmLLMv9pHdnA1ItFJ9mP9q3TBDgpZWhjnw=;
	b=KiFVXk5XYAB+42wJalp0sR0gGoEOWg9d0ZpbTfaUQZAPPt3W5ptncg/lWR97cD8L
	APq1V3dOnE0JB63JepOrv7jnetDywZwH4xZoBmTp81/1YUzTHzOHPNRldjqD/aG5z/T
	xYbCh+vMn1chBG4aCy5as/wqpzsuXqdpmi1ZdasU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658060213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BXFrX6mEoSmLLMv9pHdnA1ItFJ9mP9q3TBDgpZWhjnw=;
	b=e93P5+O7OlUdUsh4ddd4jS9KmB913DhPArrgKkoXVHmAfZyu7NZMOPz34N3aYqOK
	hsNuNwr28unb/4iQbMSh3n/LedEVYZ8VUOm+i/HS9yF4vrcZ14nmmWAv+/1ZuY8X+PG
	gzb+sdZxwNrZcQ28KhvfegXnIIvz2TmJIvdTnR+o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820c170855-de8b6975-58f0-45d3-b1bf-41ca83b14105-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f8be4f576146010db88e09aa516657a29c1e3e8e1b13ad61557edecd70cf128
Date: Sun, 17 Jul 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658060212
