Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93333206
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 11:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657799212;
	h=To:Subject:From:Message-Id:Date;
	bh=Rwzosy3MGF0Nueq0YF22K1Llbdsj7rZXQHwxNcDZXmc=;
	b=aLqaKK7W3+MRYRkhXsFbvn2T0AmSfH2OW8sKx9CF4BMgKjBnPBKV4f0M3yW3Ttni
	jxvcM4VYpkxWivoX0juYcedvcut432XGv9YDwu62oAasZn9FqnKSnri1NaHteuI4gzf
	T93YriU8KCZPqWQX9Skw6bOjJGMQEhv9aQOPyQNY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657799212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rwzosy3MGF0Nueq0YF22K1Llbdsj7rZXQHwxNcDZXmc=;
	b=kkFUucGMV88k4CfeV9DydGDAlu/1C76JA/oWvVLutuNBlJycOAuRiKZ4/RrSR26v
	zD0yEFBapzsls5A1hQgYTj9l0UOAueX9MEfW4TWVxM2ArK214SLBWJ9c9S2b5E2wKy+
	ajepa0KXgBxcJ89CcLLAQbQqqxcEIw/0blkjUYfE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fc887cf0-a74bbb88-1a64-4d30-ba2d-e3d5e21a187f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ab18defe3e5af499715faa321ee7b07b9ba5b75fa76a85c8a9b2c6e5f59a946
Date: Thu, 14 Jul 2022 11:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657799212
