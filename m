Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA90E7C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 10:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657102612;
	h=To:Subject:From:Message-Id:Date;
	bh=3+isipNg8rNtMaija5QnzD+CxwvvfW1WUvGWHp7lu/0=;
	b=huSdgZnpCke7rK8mL9t2eIxvCA9EkFZYS71RqwRI+xfk7wZXdCKZq5mhSuwSMZaC
	lM6FvExvC9mlyyd9zBjt+SHquV+iNVlJBvbjjFur2YM7ti1icoCfeaz6bTqN4HRIzaX
	2O2BX6m3BNjEVRzgKzU2rKdTk6SZ6dcBKhaJ94vM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657102612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3+isipNg8rNtMaija5QnzD+CxwvvfW1WUvGWHp7lu/0=;
	b=XsR+1goUIv1QahhCXKwxSoWindjZEm0yOgyL0oBZkllYiQYvaRyNcWt2ME6LK9bl
	cR8GhKwm01HzEqRtp4nBQZq/fX5/6WZD25F8ukOD2kQ/CiRmPKjwA/H5P2vk0/o2vBN
	T8c8MFifUkn1YWMd1dW6l7rLFNhl4HI2FvxpCXug=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d3033720-93e63a78-0f26-4bfa-825e-ad6d7418775d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f17d991f86c65e88d1fdb19d28258cc52d16a8110a258a5f998478b6d17a6ce
Date: Wed, 6 Jul 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657102612
