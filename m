Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDBF2917
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 23:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657063612;
	h=To:Subject:From:Message-Id:Date;
	bh=9YDjh9Mb7zj0NWWlPvwEBzxdo1/Cxy6/nXd4MwbkqFY=;
	b=OR2f+n6zAsclqLdEK1ZcicviFVZwnb5UX6xPgeE8C9QGBYAKz2g9HgcAQiQq4/8h
	dVppYFjoaS39SSLhwOKALoW3KN7KxR1f8Wk5ip+kNFtZusd1I/PAKZ4T4GLUvFurS3C
	Z56+232jeskWPJoUYR78IvMZ3S+AOZ3wUNLTV0B8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657063612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9YDjh9Mb7zj0NWWlPvwEBzxdo1/Cxy6/nXd4MwbkqFY=;
	b=Gkn92u8+WrdT11WvQlmYBJpZs/c0b60y7jGw28M6NWu3zTKaPvx70/xQ6GQ7IJEV
	jGpTBYVPAmW+5p6s52qp94stSmQ5d7LE6DNQVLl0Ygs0oCij5JqE4ESDZY6wn/4ltRb
	mPduI/gLMUeksmz+LkxNHI0kcuxM4MbDo7OJoxos=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d0b01fb9-2a57c167-fbc6-437c-9224-74dc80380553-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a30b51b3089b66fb219daa0b60682c06a981f3e352d63d84f15da9572523e6e
Date: Tue, 5 Jul 2022 23:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657063612
