Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DFB80F
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 14:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650291058;
	h=To:Subject:From:Message-Id:Date;
	bh=ZCi7EGIMt3pDkNfWG1W3uqLC58Us8lV8jIN5/bnlJ+8=;
	b=AJEH24jt6waAg6Bx8QLCU7PQ+VD95TrU2omlY5BmGfnWxVOn6g/RMdPsH20wfX1C
	eV5RJlXyFqMpNfv0cYvfPRabitHmRfOjGkgelqtPNk+2iN7qd4fBTTYQT0DO99ZxDHR
	Qn4BURoZOn9M/aYf0i0D51WxIe8K9iA+VcXniDHg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650291058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZCi7EGIMt3pDkNfWG1W3uqLC58Us8lV8jIN5/bnlJ+8=;
	b=aEe6X5dSQ2eeTg5sIVw24E45EM8XppA5ct5nOJDy01/E5HIw09iIVlpkkN5BRMxZ
	7X2Ohn5LAAYVopD+mnTvB3rS/qd78rOKgfCg0fSjrz8GzgTDKdnXkmj/bX/l1U47GRt
	IGP5i3uR9zruI6WdAKTcrtw85hC9RhMbftLba8UI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803d032650-b1b14b35-607b-4253-8fc1-86d86d7a95cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 946a67b77bb29a77630750adbba5fd6cdcc3e2990530247815c478235aeeddd5
Date: Mon, 18 Apr 2022 14:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650291058
