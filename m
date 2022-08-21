Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A09136A
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661082052;
	h=To:Subject:From:Message-Id:Date;
	bh=PJjpSf0LRCbFrNJ+dSRTQ5GPj/IzPuo2bDzELBxyYMI=;
	b=CHwPSwIgqR706Ni7eUb4QixCMIrx+6LdieMwm9t68X4BIkw/bDBXk5qeqR0A2XrG
	wrUVLbQYO6rQEfEUP5ZezNahh0Xq2R7j56AnRGf/VSrbm4WtbbqeYMnXGx0Ngnh4jgh
	6XKDBuOOHDq6xiGM/UvM63g4mqK4giUtvk8qgPEM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661082052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PJjpSf0LRCbFrNJ+dSRTQ5GPj/IzPuo2bDzELBxyYMI=;
	b=LDMBMBCKvewxnJJLYU6br139fRWiEUmZ2EeFGUF1ZzHaEgfVJh00nu60BJ/l1AJh
	6MWU/LiXZzIFiYdIX9Yt0QV6kErQJHqB/XMk43qouGU8dQlUor9U5MvKIgO9kYgbMNS
	tgWBCwOLDOK1w+AweQW5V8jgKrZfRh+gzeBr8/+w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c034a7ce-4b67508d-c96c-46e9-8f7e-f6cd7a84925b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da681d2bfd8a84df096f2ca51c1c8a8785398469cdef8fba4752f958b61a4220
Date: Sun, 21 Aug 2022 11:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661082052
