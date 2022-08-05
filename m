Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E8BB3232
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659741052;
	h=To:Subject:From:Message-Id:Date;
	bh=O5EX3QCGNOyB03JYbGUPwWKC5qhWPU0Ake71tP7OXQU=;
	b=ZNq5Ey8idjhpi829CWUSJ+0umOmqxhvjFqm2ld78kI1ih6SPOod1BoUuWF7NAYec
	b+aJqyppGXEP4nnE8A0I2XL+11x7wiJMOru0YBQPxS8Y5+DSXJ/2LvOys/QXuMNTNBk
	2YSw3exmEQVKHuP5Hv6/E5s2uS+TNgVp9IuAGUug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659741052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O5EX3QCGNOyB03JYbGUPwWKC5qhWPU0Ake71tP7OXQU=;
	b=DSoNenh2jClo/GMUoGZkuQp1n4yEiQuAZCbMj/NKGe0vf3lcWSBGHtaxuGbkopw/
	mK02PbPOfWL87PJUQAg7gqRXnCJtk67z7NxdwDM4hJSSByfKn8OTbLcM3FOfCXBEQZi
	HeRR7knyVx2h6h0DOM7EVFgxkawSM6WhXImgX+PI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018270469e9b-0d87dd1b-7302-4b15-896d-af4cf0874748-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21ab3874271c0f4c3e686d21f8fdac0059fc939217f26b8f178df738486cb4d8
Date: Fri, 5 Aug 2022 23:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659741052
