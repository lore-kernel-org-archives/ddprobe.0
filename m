Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3884E1841
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 15:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653577559;
	h=To:Subject:From:Message-Id:Date;
	bh=nfyJ+XDji0VqeljhOHjPDPzGmn4fmdeE2CNFegMu9zg=;
	b=NZ4EiBuBxvF/DCFx62vJWha+27ESmrW/0HfcWktFoFgLcxsVrO3Q0RAbNNky0tFU
	3dc9enVVU/jHfKb+/G3Q+c6KopnqUpj7VCvxmjvNQPfmiqg86LJm0qb+3HewmN6l69n
	SJng+QaLPYwqETPbjRtmZegcryPOM8gLFwO2PCns=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653577559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nfyJ+XDji0VqeljhOHjPDPzGmn4fmdeE2CNFegMu9zg=;
	b=WbCVuZZGrE9EtUvYzgdf5VAjg2TD+EM5qYgWLkklXu/7mTy6IEhI6UxZRDIIunJP
	1oaVOE5wHcksqT13XXDj3cke6b5fHFQYdwMfcpx263g9X+dlfr/Fqa212b+XqillQt9
	XibG7T1mwjw3R5lH39iBxlwada1VHqmYCQ0KYN70=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018100e72d1f-92eb71e2-fb7b-4b94-afa9-24a3d9bf4444-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dac06b1024d75db90e092d7199885a97f229f52b1ac59983327b9cba926fca8e
Date: Thu, 26 May 2022 15:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653577559
