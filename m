Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BE34A3E
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 13:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657113412;
	h=To:Subject:From:Message-Id:Date;
	bh=J9A2AFrYagr1iG4GLKcbd0U0Ox/xp+YQjoGqyTwljb0=;
	b=K9YGvlNf/ObcWDuWfAz5OpWYGL+afUwTI1JUnUTxfVVQTFDhTiGdbNiyQ7YLkWO9
	N63WPc49SofYqfiXylbrdASARROPo4lLMVn1hPDRzZw3z36HPVwvdrZwEf9uiBDPfzl
	KLXegq/n3+w81Yf/1m3wwjP9GFJNccaVT/eP296M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657113412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J9A2AFrYagr1iG4GLKcbd0U0Ox/xp+YQjoGqyTwljb0=;
	b=TaQ67SMRgtso8v5wCsPXcvQ5LCG1rIwHHtkcl6xSqJ7qRfJ5bj6aQspRH8n+tnAb
	VPKc9O1fqjwKQrQCQlj46TlZ0Jtx0v6Fi8SyTrgqpO8r1prdgGncwRbjg0N7OShpLRv
	w/so1iE1OhmfOc4t/+hQVJ2jA5lyy1VAXS2krP4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d3a802bf-a9b9c45c-726b-4494-8150-65b33830d848-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3388e6c3d2cf1c2034376ac517318de5da697bdbffc230a022a95b8fc8f851b8
Date: Wed, 6 Jul 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657113412
