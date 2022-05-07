Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC6181C
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 08:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651912258;
	h=To:Subject:From:Message-Id:Date;
	bh=3+lrn/E0NjLbcWiKwc7W1Db6jq3WHORfdnt3qzVOGXE=;
	b=VLuuCqDPh58Htzb9ZHvkzgR8CPkClWl34Lj8VWoQAFAVn7CnRBvAUpdy4/22g3B6
	YOqCmjo1ufCd6YWoV+wGtJr1fMbdImMUM5C9MrsdaEIJ8uREQMTIvYdPXhLB6QNtWvI
	/hCkJV0QO6er/q9WVwl9gbHNDt0gBdZ+wk5jUDLY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651912258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3+lrn/E0NjLbcWiKwc7W1Db6jq3WHORfdnt3qzVOGXE=;
	b=HKEOTQRA+VvuvzyWuW56/bM5glrxCT4W6nrCU50W8tvrM2S8DWhgFQKr0JuHsPxN
	WWFafqixupZR4gExyYJvLbvXpjRYRlzyBOJYd9wa+ImJK8A/q8kY7HNQzXJQEDtiYeR
	Bf2ftDSehgqFVgTiRkT5U7SVqm3VIuyrPfqxax/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809da4b2d3-c481cb61-9fa3-4a22-8664-ded3825c98b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a56da49d973b8bed0ff67c8e46915936bd3c8dd8b0ca451de5b26c4f19689e6c
Date: Sat, 7 May 2022 08:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651912258
