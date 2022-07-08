Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E835333F3
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 18:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657304812;
	h=To:Subject:From:Message-Id:Date;
	bh=/0B55wd5M9d9HuTZh2y1i7rB1Q1IAm9b1GbZe4mrbmY=;
	b=iN0s5GmKJKWvUA4eb/NAa8B8pzzbiUqyV0jpMkmJc6fbF+eP7sctWQyPj+hAQ0l4
	hqdrMzHpdDcaHOe/D1uCnpjEa7GdwT07Q36eXvXKwbvqz/YMvG2rpvDGuoLkygX2TEu
	xULxZsSF71xQqoKxo3sNNEoeSpZvvFlpyIKEEwMc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657304812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/0B55wd5M9d9HuTZh2y1i7rB1Q1IAm9b1GbZe4mrbmY=;
	b=Hw+yehz3qsbBlHG1C64QCpWBiIOhMfwBvGDfM11jzI34NRjr0biEyWuSk3oo/BLP
	mb2RjqNi5NfduMSPioUZ6Ybj6Luj23eWTY7YKBKCk6pXkUnpk2XA45sqtQpVhpYVffp
	0DLLXGmhdXsqKj2nMa9MiJduiq42uWhEUB1wCB6o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181df108ada-92a4898e-ed3c-4c31-8a1f-2f82ce0abc33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 483c6cba025dfd66fbac7348256913dccc679389761992c01125af20af43b92f
Date: Fri, 8 Jul 2022 18:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657304812
