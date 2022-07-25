Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3873E7E
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 22:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658789212;
	h=To:Subject:From:Message-Id:Date;
	bh=3JBpw+HSKojz2HtcblmpXSZl6vzGTRkrUzk340kcsf0=;
	b=CZlfYtWtNxVr1vHUKt3TT3NboKLZ8rytu1CZyAcIFynXDOOeTDvMNOyceWCPST4v
	QpRw92TvLj5DLHmL5LPIC+v5WcCBAjYmU8J4qeGuGYCYj/Gna2f8u9WCmjmGqfCrGRI
	clGFUuVBmSHKfUZh/We3ZZumm2yxRWHWc1/KEubQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658789212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3JBpw+HSKojz2HtcblmpXSZl6vzGTRkrUzk340kcsf0=;
	b=RcMSAeAI8uYc6VvglA9TXTCCS2elrkQnxYa/ngS6690VLEGxj+xvnvfwxiR7F3gC
	o16hp4HGLdkNYF0cAA4GFUKTaI+EJ9aLdd4X3h4zWT6bRc1FfAFHClcB2Yu1KLCkLyC
	ye+DHVmnL/8GwsodjmOcFOmCjI2hovwCHEvVybMw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182378ab08e-f61885c4-a443-4ad6-8c5c-875365dd3d22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54e7419c7c2f4c1672457f6b6e2813f2e64213f4a7b6ed09366db6190f2fbbf7
Date: Mon, 25 Jul 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658789212
