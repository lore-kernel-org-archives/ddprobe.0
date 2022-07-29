Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EE61360
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659091252;
	h=To:Subject:From:Message-Id:Date;
	bh=5Dos6wsv6e0DItNwQ/aSv+0l6B+Hs5VKKaXkaoDWyMg=;
	b=iLB21IKGyUkaT6poAgN1Yn2k5/OAhEpTFm2359HRfBT5xrWimcTYN3yT1UfLHwYk
	vWCoUQujz0rueYzKPiEtboSQu1392b04vDNiofQ3+sMeZ2xVYn4YYMO8o/8wjcin0vK
	DKACgYqNAZJ/fDI+9P8Fo/ToKPgmcrk0d84xsD/g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659091252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5Dos6wsv6e0DItNwQ/aSv+0l6B+Hs5VKKaXkaoDWyMg=;
	b=LtQ7I0IpeHYx6MwaN8tZZeDUbnfm/MPup5YJW1aTwFXqsQj6OoUa5tuQZ+UVQHlB
	OgEpV7P5LhG3oJLwDwzl+Iu1XxBYsj5Dsd+yiDuH9y9nnXcXST5L5OE56+R5gr/RO8X
	I39sSyNqKAuiLazMtn1Y+rynB00yukhwbwObQd78=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182498b7561-545f2a1a-caa6-4528-8451-fcebf9e3a03b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 130027a1438dcf20a8d73ebfa45baf9ccc2bf6950048564969ba6b216e839ad7
Date: Fri, 29 Jul 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659091252
