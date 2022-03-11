Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B23D37E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 01:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646961684;
	h=To:Subject:From:Message-Id:Date;
	bh=uBfLyC0wh6YKjmlKyWg8Aq9JeoMb6i1KNs927UtG6CY=;
	b=eXvQ5go73Gc/hxDVW8E6J5RU+Ybb1/+mOdq4HhiK3uwPs3N0VDf53wysBKYwXZyu
	sS4jWHi9L3LKeLDJ39itlQP8tRvfcrAZLA8LB5A9g3Eh221mH0Faj7yPAsdmtgD6RBa
	dFMK+1U9Cs/pjAr8uQ71AqG5a0cJpwl8K2NQzIx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646961684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uBfLyC0wh6YKjmlKyWg8Aq9JeoMb6i1KNs927UtG6CY=;
	b=bHPg3V7mSU0DOubQRDd1EbZWrsEvtfe1r/GVUKBmRWdo9sOrSJQNhykgc69YLk4P
	ByCwpqtyfYzrXpsES8Ir2rtAnoA8ZvWfqaIgpIutLvWErIRddTxDtMc/O/vc5l5Z5IM
	7JqRgpUCT3MRfbdyaEFWXhYjBFsdShI/xIXQjqx8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7690f118-262b305d-d223-472b-8cb8-882b3f278f32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 500e378831ebec35ffaf67a471cfd60c9fac64e3ab2573ab725e229290feda4a
Date: Fri, 11 Mar 2022 01:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646961684
