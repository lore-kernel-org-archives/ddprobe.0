Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614EF365
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660279252;
	h=To:Subject:From:Message-Id:Date;
	bh=tTaD9u0FYiaUeunQ/q8Wxnu66l9wUDSbzVHWpc6QWjw=;
	b=YesWb74/kR3zIdqqdiZ7k01ZRSJj+9HiQg4bYT+elr3I5jR1qrkSQrOJGs1ZWENc
	sDItQOgOYciQ7b+wZUyo4OHfBr56/ibt4QTegLGpLIcScmi4GKSaSdtHTYAsqP1bkjq
	Bnv0pQ7p3wzxHnFYSQ61U3icJBVzzrXdUJWIvYSc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660279252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tTaD9u0FYiaUeunQ/q8Wxnu66l9wUDSbzVHWpc6QWjw=;
	b=BRm6FpznUxaghwBe8rY5tT7tVdCQl0RBTt7go14TwxLews6Cg5J2oZDHCsf7wtsO
	x2xNKtRrwGSSufSIWwgSRGEGKI/o4P3dk0PSZSEc/AsiCjREbNqydXAdaZhKH0lz4A6
	C2OIEHo6nn4ja8GFTM33RGHjlyfNnAKj2tM8e3hA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182905ae67e-289dc156-b058-4e18-9449-33609c97174b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe081be943ec4c431e95dc400ca798bf8eb8ce33847558f5fa9e71f1b7c0c311
Date: Fri, 12 Aug 2022 04:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660279252
