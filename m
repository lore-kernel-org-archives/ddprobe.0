Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 756E72912
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 21:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647378684;
	h=To:Subject:From:Message-Id:Date;
	bh=3X1b4QnS3zwnAzir4Vih40uFO3Z8d5llZZrW2MV8w+g=;
	b=gprUBxIHuJ9R1xhdMsxw+JKwoEcq5WCxZJ6gHswQRJjnigOA5VCKz219P4KNR/Bc
	NSZFdHmy6AssEv4wZ05y4xAry8lSYYrOheLINGRf206POVtToU9SWWuPhqXpPr1rsrE
	mFsMVK2pUgficzbqEkXoxBIQ9Ds7f8Zb7x/qjF3M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647378684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3X1b4QnS3zwnAzir4Vih40uFO3Z8d5llZZrW2MV8w+g=;
	b=eQfW0JaJfvncJdqPDRsxfPoqgj5RO+qY5jomjfuKWY8bsj0G2P7W9D0ifF4WThdH
	tvx1EnXP/jDW4buzx+8DB8JiiOgLVdzFcuzJ2hBcV4/EQjkOrsmL5m9i1lJcdE9Ly7T
	DgFiRygjlV44+RWXuhXaN9hGEh1ClMctP/v4xbLQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8f6bdb60-920de599-3d62-4e12-8af2-57b9bc4aa95f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fde636495bff860df977eb0eed5367d895c6320f65961aaa77b824d533669442
Date: Tue, 15 Mar 2022 21:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647378684
