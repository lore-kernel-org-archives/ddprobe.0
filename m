Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFA5B5395
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 23:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646869585;
	h=To:Subject:From:Message-Id:Date;
	bh=75whbFpvRfQZXljB0cUtrNMr9atMYF5yfJE2kb7jgMQ=;
	b=QqufXoQDv05sK9TQsyYFbQ+h74CVTheaelk7r3pbNfrIL8Q1wFx+u7kAfpEBBS11
	mmGi5K3RmAjiSbi/lKhRwYV5nJFtbawdO8uh2SenlYmKzD9n/FQIPtcYLiWwXrtBjjn
	AyVsT6VDQ5FAiFtGJA2rdjcj5cjf5WiDTFv0T/K0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646869585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=75whbFpvRfQZXljB0cUtrNMr9atMYF5yfJE2kb7jgMQ=;
	b=gLKlBjK81GS2uSuVQpBeXLPDzYECz4Pp1Ild44AewHZtYDyWuMCcjFt18Iv05iPs
	t/aj5kMxI0Xpz6Di+mg/3C5YOeL8f7uPZG/G68SMEUDX48RbJ+oxvc9jS4OvvH/wZ3F
	curR//3K60czkbJQdJpKDAVqLniau6AtsX4wikBk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f71139bce-e53cd15c-75d5-4a9c-aa84-819fa38dc141-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db27df3fcc0f927e9533eb20d37befa6ce591f926745c60e6bc2f0166caf91bf
Date: Wed, 9 Mar 2022 23:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646869584
