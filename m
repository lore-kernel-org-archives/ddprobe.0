Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376547B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 01:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651195978;
	h=To:Subject:From:Message-Id:Date;
	bh=d87uuRlmF1epZAm6dTW1vsG3aNH+OiPtXxqAayem6Ws=;
	b=cepe2ChKwHLdHKiaGGmxpzyjeqp2xb0oYldY4s1pJIyIF0ocBV69Pg3o43nS0+5H
	8e0CLfEsDPJGvNAP8Av2I/PpxcOcaBGOB7sCy9exJnSvpXnJtbfxUSilk/KvrnSZLsX
	OFqIEuEyLboEqdZFZYIrMWNi5snIEQkYLV5w5Z7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651195978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d87uuRlmF1epZAm6dTW1vsG3aNH+OiPtXxqAayem6Ws=;
	b=U9AhacGHWWUWYoLqO5V0uSSOJYe7AQcmSGWvwaG32i1dlGgNfQhVrl9ckOokSSiZ
	r0IcLMGBtN4CCREd68qYV/eX+NU9UWn7GBXgu/XxCZ4tGdHOJRq8EPD9jxMWdaftBpz
	iIq5UzRQL2u9o0DBJsrSFAEOo8q0FELjn/3eWSYM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018072f32220-bf22d4cd-121e-4f96-b7e2-540e795a4f69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 737121e1625b0cbc6a372047e4e15566c5112524c77ae269b10afa695d00cf6d
Date: Fri, 29 Apr 2022 01:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651195978
