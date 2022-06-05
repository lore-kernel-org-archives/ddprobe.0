Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11D81852
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 08:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654419299;
	h=To:Subject:From:Message-Id:Date;
	bh=G8QbRlRvCCYmcpwYRvxli013o1/Mq++98HxI7+4prkU=;
	b=RLZ4WyOP992Xcni4ifIR41cB1U5qrmD5GIe3+52xUgFkEz38k0abWE11tuI1VJeN
	fziUT2FehAJ7vmTMw1YCSKdRu03+0tslfAFEpBd7x6oY/C93ZHhb/j/tWvfWArqNg9B
	5JovZWQbtMxdC2gwv5nXh1YQ9KjQXNltMGzlGZKA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654419299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G8QbRlRvCCYmcpwYRvxli013o1/Mq++98HxI7+4prkU=;
	b=X1fXeIPjdz0TpqrtZ65J4nAWe2Y7foO1Rta2s4ZyBdV7VkS2V/DvVdPRAi4w7WdP
	t5YoLeqs/RPgE068xF7D3WSSQ2ELrnAWA3QCrx95rd7wGCIrZ0oX30r96O0nbRbDZzg
	v369EvUTAT7VRECchSDEHmnKvRiFrDo6ejaHAt8g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018133131bbb-e8a3d2ad-ffab-4582-81a0-065e088bbe56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52a91301ba75397ffab4f80e95815ae6d49c6dd39f9fad3341d0127b3cd97560
Date: Sun, 5 Jun 2022 08:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654419299
