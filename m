Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DD1468C
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 22:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656022612;
	h=To:Subject:From:Message-Id:Date;
	bh=9+5+NPt061pVm9wn4Q6U68hbIuy8HSndEQ4NcKhAEOI=;
	b=DI3VjH/POlw0CEg7jUtDlGanjNZ8blKBHT+A70cCV9mAkF+L8Z6YEks7OqlQ36W+
	vCIs1YdbFNcW4t5ttZleqUnJ0c8mtD1i6D6JPaETNQ65eT6mSA03yJjHJsNhxuEM6Ew
	nktVMw9HYyHksRGwVL1E4/taXPy6jE0uCwzU0Rxo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656022612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9+5+NPt061pVm9wn4Q6U68hbIuy8HSndEQ4NcKhAEOI=;
	b=I7+kTMkiL/3+7rFFwhMfOzCmT67fzki3qXMoq7Q27pCUOBG1xKqtEB7rdriOdvFI
	4y2pTnXwWiJXmz3+7W7K9MmTlBZaxLw6aJw1e6GORPFEN7DTLoprc0PNZcCUOQ9yiqA
	bg/AyXkPzxlMEMb0GrsbeRSwI4HhD9hxKxRFoEgU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018192a3b94a-c3ffa760-9713-40c9-9606-2b19633296d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22f1cfb39d28c77bc9dd95b1f34c5bf2c0d5e22d8fa6e20b97e0ade6861a8d7f
Date: Thu, 23 Jun 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656022612
