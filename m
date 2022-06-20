Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5858E323F
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 19:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655753579;
	h=To:Subject:From:Message-Id:Date;
	bh=om+CCLDnH4sbDEpSXJdiP9jto30nGqLLA8QCHCxYwQY=;
	b=Vmw624odqgfJkR9HFmtccyZf9LK+6PKFdvfppaDFSzvjJjSjUi/NDnZqyjiGSWue
	8pnGBjMiZlkNFVJBdy16lY6V1mgtCTYDRC4mQY/iQXg7Jy+EdXSpmAnF1VAJJ/zpFfx
	oPyqpFw0J/5jsyj7ZrdDjnockadYpwRUY3oSnoUI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655753579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=om+CCLDnH4sbDEpSXJdiP9jto30nGqLLA8QCHCxYwQY=;
	b=Jo82GgqnWTSS0B69B9EpYw9tVbzmvLhPbfrEDl4phYbyshfZFdVlLtcCzwFmRzEw
	lJV6xQ/Qh4WsfzQBu/yLbp6OWjSpZwQU8Y3LxA5oo28ek2tshMTypv9Cx4dBZ8OrTwL
	km3rGQZLqvaqDdt7wjTnIs/Eh98k5knRXnvyv0DU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181829a9b5f-f64589c3-aef2-4cff-9f55-ebbfdecd55a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d4a9eec1397dfd9bb0ba27939b214f3c5c168ccb3f8af8ad1c5094f827ffc98
Date: Mon, 20 Jun 2022 19:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655753579
