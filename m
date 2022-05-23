Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1340C629
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 09:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653298199;
	h=To:Subject:From:Message-Id:Date;
	bh=h5AQQWsH1xzuSHaNa9qyBhTzZzWFreneK+omlRX0BO8=;
	b=Kemw13tjcuPS2ZMs7UrvNOKTvbhUqkWGSYJNqv3SMJltGpNAhOsiEGdwF0wl0hqf
	ycuw41nSzgFCIYXDIqMmhKWv00YieCJoMIFegin6D9yyVTreyD0kqH/GLyagmAmv1yH
	gTLf5a/Hu7DfW8rMrCiWDE5KKyGJKS2g6LYDXCBk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653298199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h5AQQWsH1xzuSHaNa9qyBhTzZzWFreneK+omlRX0BO8=;
	b=DOPwqGxOVUQMq9EAg+is5GRuOZk3Ln/XzKMKJ4vILE6ZX6QvIbFUz0SWa5wXi2Cf
	J4FgW+ioB2YOXUkQHPEbG7dmf2St8pWuDluepF5PYqOnO1S0IaS61lcP/7yFoqnWX6m
	k+UAFpxNCYAULeyCedwZn+2krXYQShY8rfIiQt9E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f0407b5f-1b0ef456-d753-451b-a3e6-ef6d4b073158-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45dc377437744ee0b343f8f59601c195a2093e61db4a368fe585db53895c2350
Date: Mon, 23 May 2022 09:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653298199
