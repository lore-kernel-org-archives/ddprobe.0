Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202C77A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 12:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656505012;
	h=To:Subject:From:Message-Id:Date;
	bh=DL+Kw1sscnRjhDg9EjG20fslfGp8pecjIjAGk2zSW6U=;
	b=ZAEyb8630laehpN6AetJUy1Vjr+eTKelmzQxh34LoabLHgUqZzlecO/Yho3an8M4
	ZWAqh3asA6Pq7sCWdE2RbgEgOgr/Y8zZ/oTo0GSwlsVEw8LgECbVQje63FSq6EQjR09
	k8nueb8eVOJuANFjCfu2gB7NhQt2od73pXeL/yuk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656505012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DL+Kw1sscnRjhDg9EjG20fslfGp8pecjIjAGk2zSW6U=;
	b=jqhY5HMeGvf+h9N680wWOWoVqW42doEpIluLyJ7Na00Xjb/jKJjpuF71kBqncDgv
	dFrdlZPNJi5KDbQYNelKn6v3uG2qNYXGVeOCr2N7zrlHDlzQ25pVrSzzP7nCoFU453/
	i+7LN9sRJUw//qVA57RbCpTpAmPCVgvkfQ0L158w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181af64903e-054c1e4f-2999-4e32-afe6-546de33fdc40-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ad471817f2fd70949ca53b9b8aea3d8dd34535848a4580a79e87c729793a9a1
Date: Wed, 29 Jun 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656505012
