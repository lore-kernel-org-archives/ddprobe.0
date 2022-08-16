Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8E51383
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660614052;
	h=To:Subject:From:Message-Id:Date;
	bh=hRROOQ6RwJvyJcflrmA0uf5htD9ZT7UG7UtzXUjxwfc=;
	b=f/GqP72IJW6QQMPXJDKLA+6ro/IbNf7Uu2OlUNPi6YL6zLqyCE6x1DzICMwRzDP1
	+e0xwLxqHppaNoWKwDrWms37y8M+Gr8e82gsmzWbiZDkflIhpqQENtudEZHnACC2IlH
	MVUwxS1rDDK0WQkX8mYdjBM8uSd6B11J7fjZNZqc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660614052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hRROOQ6RwJvyJcflrmA0uf5htD9ZT7UG7UtzXUjxwfc=;
	b=Osg1ILSlq1w1+WJ/4GNqsyDL1AADK9TEV1beYDjfZMGnX7bGxhxZy3ZJhFa5tqYK
	GCB5J1I+p/M9BoF3+yxHPE3IGAYOMDG06wXwCCrOUgHZQJAvvNjfeWj218h+ytmY1b/
	QFIvixnLEmEsVHfeOdZuOhGkkNQq5kR9YcB1Cqu8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a44f8abb-cff2ad38-4195-431d-ad9a-7145ab5ef714-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7358a07ec0a07d3a05a2369207183cba56d980ac2d618c9b5b214cefd0fa8fee
Date: Tue, 16 Aug 2022 01:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660614052
