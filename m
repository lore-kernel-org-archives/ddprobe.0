Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FCD27A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659036652;
	h=To:Subject:From:Message-Id:Date;
	bh=hZyfuOOKONLqsqTrBhw33cIXKrFe+6xoNjanziF6m10=;
	b=V4mTaxO45UdyXZap+IKNnOwrGRE3r8BgYSl9wDu7pSsfkBbI7HeGGawozdrivd9B
	y9lz5Dyham7/aOqF/ltnUY4zsjEXHdIPQ9hiS5SP8Q7dnFWY1v9IO2CCFsdr/rXW0II
	vhgE4m5jxwZgbdTFFtrKvhrZt0ixjfumfYI5C/n8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659036652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hZyfuOOKONLqsqTrBhw33cIXKrFe+6xoNjanziF6m10=;
	b=TeUl2adNnHxn3ui8MesIlsVuTipAUFxSziPh1KQfOA3atiGuF0M1CKKPsYwZ9RHQ
	+cuHwLUVREA0QNvvmoODjd4pISfbdqkQzGT/hPA13Ot3f0ekBwx8kTywWl8I7Udu/kL
	U5t3eTH9EFhoTt2Mz8YqlJhkE+B+13UXD8g78qWA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182464a5403-0258fb6d-5f67-47d9-83f4-46180702b1e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3df7eef6aebf7c33510921a9dfe840b0a106ee5507d9ace1b8f31d8282b0c8de
Date: Thu, 28 Jul 2022 19:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659036652
