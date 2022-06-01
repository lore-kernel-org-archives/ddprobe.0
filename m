Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E46AC7E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 09:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654075919;
	h=To:Subject:From:Message-Id:Date;
	bh=IQJT+bEyhlGSFlAsDJJOoNbcWtl8BBZWc7e6VLmY7jU=;
	b=TpKKKe3zo37K6VPMO+ynU1b73DDcTXLak0Gk18OH7nnDJ0ZBBGGfXCuXaLYmkUlU
	Gx6y30x4GyEzn5FNdhNid/Rvyfz8w/YhuIDrBLKj8pUnmgvk+iL9Gno++sIvX1KC51r
	vJGiklSBDlk7v+m+wBfaLzbhwDIwH19wZBsPxl+s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654075919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IQJT+bEyhlGSFlAsDJJOoNbcWtl8BBZWc7e6VLmY7jU=;
	b=d+joqgTvYScJNOjo4AcofZm2diVcYS7Xsrq5GCV8BO+r8e2LWfjMtg1HzbvFQr9s
	UUGX79bZgtF7i+D8/BAo5T5kj2Y4xl4ZrVsfXXi23aDRYO+k7rskERJUt5UOdGn+QUk
	1IbKg9E5AW+8QOG7sC+smefz1eaU3824B/XUQSus=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811e9b8b65-4fb99414-7935-47a3-951f-f740bb6e4520-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c735ce640481ec3f3ef9621e1edd97684ca57b7c90908e8bd668994376d9f6a0
Date: Wed, 1 Jun 2022 09:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654075919
