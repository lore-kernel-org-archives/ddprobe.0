Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526EC7F
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661214652;
	h=To:Subject:From:Message-Id:Date;
	bh=ytrB2bKVJWY6ydZhB2ncLidH0DVmx+rhs1a5M8FsFEU=;
	b=I8KkgXR9fjWl9L1UiwOSv/myxFrFUFVJYky4+jLjzC7NRkdAJagntYk9xR8uINll
	YGVS45n025bEE1TpWsBzPlYFDTXpRAWxGjFBQ2uLxdoC1+lYLBKfIjAmnDkWJczTy6b
	n+jbAXfIozqmwUd8BUAUl7L6kauoge8K6zLKeR8M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661214652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ytrB2bKVJWY6ydZhB2ncLidH0DVmx+rhs1a5M8FsFEU=;
	b=LrnVY6wADIFpXlPL8R8E5ZlyhAYhou8CWPk3ZzEOfm5bGZoQG/qItEqISOEmK7SD
	WBYBTzm/RZ2lLYUqBI8O6SWwAHThfUu78CTjlGHR2uz1reoNoivfksMj7pXh2JlUyQt
	r8bKWJabm3lNwB5wM54/B2IvjDwjWf+YKt3Io7TU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c81bf880-a48188d0-ca02-48d2-9ea3-56584afcb4f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efb08f146bdbb63d2b749d17aaecfeb7d65d16d8683c025ded5004ecc66d8ca2
Date: Tue, 23 Aug 2022 00:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661214652
