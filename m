Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC337E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 05:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648187818;
	h=To:Subject:From:Message-Id:Date;
	bh=BZFHh3AwNfIcpvXBA8WK9x/7qkoMZgRq5KB6p2PnT1I=;
	b=KpH93eHK02XreCJpPn65dt0cDN7htsA8s9F0BOIXNyqq7QClA430BeJL5r1gPx3c
	QqOuOb1O0hepJcTPjhp0MZNEzGUtv0bvdYumkFeF5t52HghNGVjebjEziOmdmBq3RCv
	tGQGYzZax7xgyWPl7AB61EF9f2dBZl5yTLiCW7Vo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648187818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BZFHh3AwNfIcpvXBA8WK9x/7qkoMZgRq5KB6p2PnT1I=;
	b=FwtHC91EkgvYmNjPikg6fLNgq+ZJzgfaKLKj55qWixpvOBZlhHNjsUaomxZv4gD+
	GTgex7su2Dd/gwDSpDocbRxHIT3W2rKa1z7jvKW12ntkEHENvi5V2FnxVO6gVX4w21N
	MxQfjhm/TPg1bl5lcw3fnY8Qv0AbcU59gPzNJHb8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbfa64123-2746efb6-4c53-43c9-8ff7-e50f94fe6a37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a71dc8a1101d99e4d6d9ea2642dc1af80e55b6138f196d84de5fa1e2e98c62d3
Date: Fri, 25 Mar 2022 05:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648187818
