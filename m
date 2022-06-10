Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344EE2F4A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 22:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654898459;
	h=To:Subject:From:Message-Id:Date;
	bh=mDwFo4nWzJLiK0s43skDjcE1e/cKlGQUCOH3tMBoAj8=;
	b=RTNVz4SF+qVxzkx7jIjbS3A98Hi9njeyHt/AxP2s6lODeL4YFeafW7Gjkz5cWnCO
	3koCKFgaRyGVxsDHpvxL/9RUPYJwE9WPs2iHmhT1hgWVY978AIiz/yN5ly1d5AFyMcs
	fEsCR6+ARLvCHzkcHk27jyOPD/X8780T8bonBKxA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654898459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mDwFo4nWzJLiK0s43skDjcE1e/cKlGQUCOH3tMBoAj8=;
	b=eRNwDZJk4CjtdDdNN/i6tLZ1tZphr+zo5Vssw8j0KpghKQon/VJQYdVM+Mmwb82A
	5q31+O1pNSZzLg30+bO6Skl1Hg7EJu/1mM5E2iF88KJeOyTrAbYqw45mCgJYcn7mJpG
	2vRA3TCCzOa86082/BOsdlZj73Ola8JCMO5GfREc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814fa28306-faaf7798-f7cb-485a-a4e2-1d0331855e05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8a4349be669ace26c4df28732bb52cf34efb05f0a2bc254cfa021db3c44b770
Date: Fri, 10 Jun 2022 22:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654898459
