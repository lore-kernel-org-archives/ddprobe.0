Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 960761378
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 07:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648020385;
	h=To:Subject:From:Message-Id:Date;
	bh=/oAvDC5XpoyOVaB3IpBz5yCkBanulujUU4CBtYMAV8k=;
	b=UROMVa6w9DHqbH7CGv2Oi4W+OYbKd2hMwdjMOvjsK9Cj9/c3O4Zad9tiCH5OT3VJ
	oYKTrNo+Wx8YAIFb+wvkYNrOPplvjAn0lfdOEosswkbOXOhHBHdWBhYu8gtpWNPiHYU
	jtdN5iu/C6JlVgOe87OQ5y+pBgARpCHbYheA4v8w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648020385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/oAvDC5XpoyOVaB3IpBz5yCkBanulujUU4CBtYMAV8k=;
	b=WZPlUfFXTAoHf97J+0YWnb/X5JCNvv+IcamRo20RCrRs5GoyN+46LzLfhCvJK1Au
	8zRPE9LomBfRCshM2c9zRRgJfgULiOs0mKs/PalVEIhl5N6TLalDIzrgSBPJK7UZ/of
	HQVb9a5igQkHG8LH2Cv1udhNlu+VpdLx8siIdHKk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb5ab6be5-32f65271-534b-407b-94a9-20eb7ed0cd0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a89402fa51f60335db3a40d65578c74ed1a3c5efbf7330f43785d2fc1519f191
Date: Wed, 23 Mar 2022 07:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648020384
