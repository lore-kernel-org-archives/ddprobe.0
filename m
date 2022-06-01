Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB862562
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 14:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654094819;
	h=To:Subject:From:Message-Id:Date;
	bh=CCc+O1/N37fqAHR4PojYIDRqZlevJoQC5UrWKUq5AUs=;
	b=WpSpWzJoQnaML9nXPnNHPdRoQ64U2XMMC4sTTyh7l+/kQa0TP3Rgkcuem+Fctoyc
	6M9hNApE4U7Q4+jUVP5NGcgbZc6gqfzy3dwkAr/T9xU+aeL3xlyqjqHQuizJIHp3uTg
	nVLg/ohwo9At5EKfbTlu6BTf1JuzUMJWzKkoOwN0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654094819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CCc+O1/N37fqAHR4PojYIDRqZlevJoQC5UrWKUq5AUs=;
	b=Cda5GNy7+mklsOB+V3skfaf7KgPLsmVyyg8LhgnG4aVLHcU6v/S32JYWbSpluy+S
	c1S/Fg9VjXfCot/+XNF7QO1LRr4sR5F5CfDM1TMaAymiSMHl5RI7Y2dlSpZBwC+C44g
	UxLD6ovar4tQO9YoScpvM+t+HmbWWmLz8gr22fXU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811fbbefd5-c4085b87-fd19-41b0-92fe-66367b6c9040-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b2039489fc61046a872ef5567381120c21b53b5522aa5b1aa1f6a07b9e7bf48
Date: Wed, 1 Jun 2022 14:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654094819
