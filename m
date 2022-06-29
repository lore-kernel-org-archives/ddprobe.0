Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2C1C3C05
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 15:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656517612;
	h=To:Subject:From:Message-Id:Date;
	bh=Eh4iFRc9xyuUPkPqaYA2CtYGVQs12xI92/7qKkMjk48=;
	b=R345MfphnY0oCsrir1tFyoXKJ7UnyAjHl0aEcBISEBpEX3JQJpQwej+2dLOxIyRO
	7/XpuUl/J+DZtyu9cNO2BKr+ru8ZQsYwcndJBZytPQMQpwM3pIaHjU5kR6KmHdUBDva
	z36Gn1Coe8fpZ7l7B7LW+0xa4w0OILfcfDF6flqc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656517612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Eh4iFRc9xyuUPkPqaYA2CtYGVQs12xI92/7qKkMjk48=;
	b=i/AOCfY8NhucvbbHympTNLE7uXCxDU1LDqdEsvu6JIPqXLMBKlRuVIqLl6gbZyBx
	84/NrtMzWRGa5zwRNmCbfLT43Vm1bVcjTqB3kYRWgJr+pWFFYwfCSEnc3Q4A4L2TBdM
	LSoHnAtWWTiVFFrWaAGRqr2P1nag8XtFies4Ql3c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b024d2f0-8076dea4-498a-48e3-a0cf-867e8654df72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 550fd2b2947c7eda74223d6bffebd76dbd12206da8915c27acdf6eef02b20e76
Date: Wed, 29 Jun 2022 15:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656517612
