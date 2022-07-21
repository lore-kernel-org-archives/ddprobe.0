Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221863C26
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 15:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658416612;
	h=To:Subject:From:Message-Id:Date;
	bh=LYD89j7Su3B/UiZ/J9RDGOkW8o6JSPykJtj8z3Dat4M=;
	b=dFhjR9HhK7cA1lm6efWkHUIu8wp7ULaUoyOE7HeTCCR/c70+x72UZWyOZINtKkY4
	PX0+3x7htZH1P+uQpwO1ABLYIXiTnpuosILUdB59MeZb7D6aaw7uH8R6Q8q1MsashoU
	NTpVSIKCmjtbTxNxvZp8ade5RB/orEws01Z580gA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658416612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LYD89j7Su3B/UiZ/J9RDGOkW8o6JSPykJtj8z3Dat4M=;
	b=gZFKBFlwIFGzn7i+pMJEszd3qVvqIm2ceV/J+HTy3kYHU3pPZ0ND0xn6h9BW58lp
	P4Kz6zl1f+UMZwOQpvg7X+8dBG3Pf+dnhyc18MFfk9DqFXB1x216M6BcC4eeDZeVkwB
	FOL5yds66aw8P6PRr6UXcv799eLlrF3FIVdm1yKw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018221554415-8e29f205-cd5c-42ea-9afe-661de9c6afba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2fa577c50872d8bd7caa9b259cd036096d6906e000ef65c786c5ca9ef7d25e6d
Date: Thu, 21 Jul 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658416612
