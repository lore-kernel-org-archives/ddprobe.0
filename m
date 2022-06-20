Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281863205
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 18:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655748059;
	h=To:Subject:From:Message-Id:Date;
	bh=DryjCwpQxJCGG247iRSH6dMghW3MqtrWpQn1jc87Fow=;
	b=D7Vwp2I4fRQO/IUyKzqoS81d9PmlCQDC1yVLabUZUacsYvmga8FPuaEcIi7JWy3u
	Q/mY2KQLkpwYgqi/ubhVKN0NkRQRO28Bu1BhwzVST3i+mahDlkOBjpcgWIIArDTJvm3
	tnm0TMTheDY+AXWD5kGMAffStN+qTXORSLuN+RXM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655748059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DryjCwpQxJCGG247iRSH6dMghW3MqtrWpQn1jc87Fow=;
	b=D1QgFkJYybf9I8eot4NircOOAaJ0byXuPrKT/o0pzRNWUKdSQ742hIAgbxA9wnnB
	QTC43DdgyK8QwN5UTpqDNRe7aYzqWrrOjfqSZQ2bSvb3Ms7t+qQpdyxgYlKf10Jfvml
	Y+mimA6E+uKmR6QNPA6S16SGMotxVWnfMxDVrW6M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181824660ac-9cfc7cf3-1cda-400a-a9bb-c0306e596222-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b90481de6ac7ec9d254618f808b475963aa7da3aa402fcdd04a58165374e3abf
Date: Mon, 20 Jun 2022 18:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655748059
