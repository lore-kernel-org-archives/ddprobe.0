Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BCB2106
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 16:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658768212;
	h=To:Subject:From:Message-Id:Date;
	bh=j3ejmD2GAefO7TysFvIgazFozX2V/tt5RjMHl0oQvLw=;
	b=Gig410JMn6N7B3vWR8avGjMjPdy/KWGVJeRJ7dkD9XUsM/iHYmYBCmzej/wWNBdd
	Bna5tyZIZp/XGDLdqPw1p/uJVe3KlSqGZkM4Iq+cS2889ovK+QyQxwKfQHT+tMfoOOr
	PEXLqoISQe3Biecud8mn0odQFAdIVtsY+1flchjE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658768212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j3ejmD2GAefO7TysFvIgazFozX2V/tt5RjMHl0oQvLw=;
	b=SI8odI7nL9VjclTUAKL+E9/5lwqcAQXJl9W0InECVvVDrvNEm+zBwXjV1vN00v7L
	vgEqFwmmxz4w1gyCjy7AhW0jfrxxbQclPOlfq1Pvev/trSF9lcFBcMGERscq/XRztVy
	5LsGb+Gva5XAXJ/+3RAjHHabSZ6wHacnUgZBQr6I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182364a4126-d1bb5441-d31f-4aab-9dfa-f3e0d9b1ffac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cdb3a8c1ccfc7b9ec35847e7a3f08de34031bb84d01089ee4c994d8600487405
Date: Mon, 25 Jul 2022 16:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658768212
