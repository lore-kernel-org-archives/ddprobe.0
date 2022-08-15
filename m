Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4F310F5
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660542652;
	h=To:Subject:From:Message-Id:Date;
	bh=5pp7UDE/EVk/zcJ61FzTOFnWcVC3Rscmyq1o4XSz+Ro=;
	b=bLnhpz34im1rxTH7xHrJhD132YugYr6Wc159j7f053rwIyrpARFM2CNIq8pcmj/e
	av7iInofGaEhDhPv0raeJQOmZk7fOVDrPsfmnleZ6BKkM3nAyB323CDUj77q7Cv6oN4
	u7IwOiyhtROeuw5Rbo5CiyKtDfnhenTJEifhxkdk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660542652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5pp7UDE/EVk/zcJ61FzTOFnWcVC3Rscmyq1o4XSz+Ro=;
	b=NeQAql39emBLD08/8IDIdsZtafw2zn9LCy4K+NGr5vmO2qtxUBNU34+1Spy1TZRi
	PknppWHsTMtSfCwLmqIXyggLPePYRmaz1RjmrznhjfI2mOLtliWbdamIwPoi6080M4K
	4orp/XCD9Hn0gXF4nbNN9T2IGqyfjSO5F/dulJQk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a00e10d4-dd5b166a-2ac9-44c5-8279-326889354dee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92eac05956551a4fb3e31ba3544ac9d7114a2d422b7d97e1315bca20f5f87e13
Date: Mon, 15 Aug 2022 05:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660542652
