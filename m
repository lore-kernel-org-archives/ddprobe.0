Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 760027C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659698452;
	h=To:Subject:From:Message-Id:Date;
	bh=uKTLA4rXQnKxlS1mRxR3RK9ZXaS0+kI2t4cg3LquaIk=;
	b=RbWHVEOXQWIT6A2e8eLXZkMWnL5a0Wtq9YXbdd96uoZxqMuL3XxojgeMN4HYGESk
	xtYi/Xrs5BwS2Lkk30Ox/MIbfX07+O6EdeB14QSign/IQLtBRyYRgvfCjLkbK2uXP54
	qDKfLEZZQRq7br2tr6jA1OqwTtoVZgocSdqSWk1o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659698452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uKTLA4rXQnKxlS1mRxR3RK9ZXaS0+kI2t4cg3LquaIk=;
	b=TIrdFhWfr1/exgekms27AxB6Gwab/mX0HsCu9WpcZC60bJ4Ao4/UToH35I5yWfjO
	q+SHX24/A5uqUI/644plDmEBrfEhkB0JqssgacVbK4wuC6WeLb9XVZhllRBjPvCzWic
	ni+bBq3IDgwtqslodTYzIcuvCu6swmA4tHBbpCX4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826dbc9850-91accc80-c7c0-4b52-be13-f1de268508db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 692bf09cec73eb3043e2f247547bab89b9725e644b03ceeaa8c2e9e0915fa9c2
Date: Fri, 5 Aug 2022 11:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659698452
