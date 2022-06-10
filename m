Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC367A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 19:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654888259;
	h=To:Subject:From:Message-Id:Date;
	bh=QFAyVaO7Kc0YDDIX0Yw9y45N3IheAQxWz8ENu91xwak=;
	b=BncgDntvkQLuLgkHfhuIvvaTzTk67IzWMrJVgV/0PV8yYMxn5Rexs77fnbUAttjz
	a9A1NcQIs+5FRHiC36it6RSo/G3HubpEbk0vUo7hYTo71kQ4jkARnJl7xjdqSnQR88j
	eUZCnXK3QmJuZj91ndX++G/Z8fEx6UVaDIc7eMSI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654888259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QFAyVaO7Kc0YDDIX0Yw9y45N3IheAQxWz8ENu91xwak=;
	b=BDxZW713gvhC2LK+8YG49CgGFFya54U5G/B+UPT/2kVnr5AObt5mEA+RTyUKSNqC
	KfDUPNKV9ZquRyLK/wGjbqGJgwycQTE2q0yJbAURvFsn0YmIcDz3XgWJ7BrTzkF06AC
	OjKPko7hC7+6mJMmoLtAw16OWcthib4w3EGXueh0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814f06dec4-1b6a3ed4-6cae-48e2-bc5c-71aee8bed812-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df7865949ecd0f6a352959fff1b62a400c6733dfb072a354fb76e2711f7cbac0
Date: Fri, 10 Jun 2022 19:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654888259
