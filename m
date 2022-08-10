Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B49617D3
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660156252;
	h=To:Subject:From:Message-Id:Date;
	bh=lGhtN60D0fnIk4W91BKXbrt6uk8pwXpdsBsOvAWmLSs=;
	b=GMR50cpnHKzc716P0Ri8nV/lRUCC1vpICFvC3pXPjt4lTUYeLvL2xEkztpap+cVm
	/jD2JGcQ2LYstU1KRbtsdeBs86SWzfo17Iv4zk3pEwuJLfiV9FdhW1MKNkHHw2sNanZ
	6c8iWIAuaGT9Gh6GmzKrDjesF0WIA8splTpXXtG0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660156252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lGhtN60D0fnIk4W91BKXbrt6uk8pwXpdsBsOvAWmLSs=;
	b=FDLAg55v3ieiJePqZPrsPM/yeu5BAD5hgfUWc33rYHYoeIcSdA3efZgCJDSLa/XZ
	tiTdOEgzctsFaXh1kekWyjkcbNvUXCnuzTJvVr0nhkf1I6Q8Ae1iCx7c7aV6LVBiR77
	fU7ZjYyjwlTziOxBYuwCmBA49gRKLknYXy4c7Ki0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182890611a8-74712759-6373-4c62-aa9f-4f130b7c9e49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8afc3cd21316dccbfa2329683ce4c2fef6542443525e096ecafb48689d9be82c
Date: Wed, 10 Aug 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660156252
