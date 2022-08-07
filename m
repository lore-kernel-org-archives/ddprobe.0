Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673553C15
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659892252;
	h=To:Subject:From:Message-Id:Date;
	bh=esKphMOUQeRH9JI8VJPjjiwKhrXJaQTye/BCm6wjzK8=;
	b=gD40+8nFYltYuQPrS20X2fOlizvgsDFweGoUI9oZeTUAOMEWrZEgEBxNtAtNKJty
	vXoK7qFh6aYqDrJNX9+ftZzJ5sHk4Zkjg60XlZeju+z2sODcrX+jb6puySoWXdyDRkb
	ohluAVtPPe/GAGdNVxSBh43H3JMJWUWdxFGDWu1w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659892252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=esKphMOUQeRH9JI8VJPjjiwKhrXJaQTye/BCm6wjzK8=;
	b=JxIglwTPXe5yPvWbQiH/IwmjqMbpYt4WcI2KxbkyCgpXqbkWrYHX67wM8J6FBOfF
	4Xemp+vT6/AhAAQ1xoffvxXTe/UMZuSumdtWEZvokRf/8kD4+1jny+s4lzxfUssNR+l
	FiGHT2DclsAmK2l7AwAuEYrYLHgzRQ68zRmp1gh8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827949bfe8-8f1e2b13-4d1f-4333-9b79-98e6252011d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ef99ef4cb720335a3e5ea08945d5271c7b56c4b7ce3863b1ffa76608688ae25
Date: Sun, 7 Aug 2022 17:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659892252
