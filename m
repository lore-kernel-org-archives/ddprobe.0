Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0679C1C04
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 13:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658237212;
	h=To:Subject:From:Message-Id:Date;
	bh=jBSvzFD9j8zo7jPYrcLYOkTp8yteIjS5WrEr1Nwmcy8=;
	b=cxMNICvHSMFb4EN6TkVA/M7CVSsusPt/wfxTYfoZ+4mgWFbZseHd71mkz5MmFaih
	NWPhbZXv9P8Ytbgi9ivsUfKYk5pLbprdSxfLYLssaWkHNUc68YEsJqp9fFl7taXIZcx
	dPBXURjsXavNqRTn8YXEYgPJb6aYoNpGHel0hzqA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658237212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jBSvzFD9j8zo7jPYrcLYOkTp8yteIjS5WrEr1Nwmcy8=;
	b=iqKyNp8jneQiML7JUaZZ5x63KKRDRYpnNrBf54HRANO+WaFoyot3SCMl83h+aBc5
	+hqCT1EIJXmbFX/yIq/f8o8+mmXQRNdRN+19ENHDEHsRXJbu3KWUg0z6TOFd7iI0CED
	aDbTUU8nYitaQ2vQuF7TGVcujO+AmV1eNeZkbEKA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018216a3d67d-f867e5f8-0494-4b12-8bb3-b26b0f1b774b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0765d744c5ac841382af96c3b8ed2d5805afd85f4ac6328ef353c2fc692467f
Date: Tue, 19 Jul 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658237212
