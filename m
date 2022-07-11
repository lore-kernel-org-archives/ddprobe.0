Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3B291865
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 03:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657510012;
	h=To:Subject:From:Message-Id:Date;
	bh=SHKi5yIgsHuSFt2owMZDR0eL6pXKX1Wo+Rh5K6DzNGw=;
	b=C4cG+j0ouxGVBpqJGgPfcAae1Wem1Ue69vxPH/QAQ7IMnQkIm09LDjcYSxHnXcfj
	8/iRWIXFuLdy5b7M+UzQrfD/J0Rn5b46MzhyNQPxzKI2VaVRu2cTIfAke2tscaYuT79
	lHW+CTuppLz+HUd8Hd03wiQfOMzIBRYmD8Fv45NQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657510012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SHKi5yIgsHuSFt2owMZDR0eL6pXKX1Wo+Rh5K6DzNGw=;
	b=Pu7DONVX30PFfWpmELzbmuLLVw+0lMA4KKxuE4ro0R++TtNDLywnogHwHL6j53oS
	Ogk06Ek/xkNJfVZexCEKbZZgHkx2gqgsIrWGyOw2Sr0QuWdDzUnvVo3iIT2j+nXbaFr
	5L6BciC7K4TG9ke0k6C0ZoeIjuZPTfJMVjESi//A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eb4ba561-a4d292ad-4353-4a0f-88b8-cce00c200df4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2bfbc198a690b5a46449f7c65c507bb9eb4568b3ea2bba3254ba7d3f773fe61
Date: Mon, 11 Jul 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657510012
