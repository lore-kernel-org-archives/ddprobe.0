Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF4228E0
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 13:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651496998;
	h=To:Subject:From:Message-Id:Date;
	bh=ArIDXTm2XQE5gqI+7j5jSSFlrvwrKw3q1+wFJh3rQb4=;
	b=jiR97dshzykm7ewEgHSaPSQC4aOlgluHEmnB+pYwR0NUi9+IhvS/cdOO+PSj22bK
	TBATFzAeEVAZv99c99M9UKcxUTv7lOJyp3caJ73jLSD0sMQx/3KRrO7pIoqlEDcDsuG
	nlQERqY6CgUF0R5n8y/KT5m1UaezESoZwfD9i+Q4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651496998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ArIDXTm2XQE5gqI+7j5jSSFlrvwrKw3q1+wFJh3rQb4=;
	b=D21/nAq1+M+wBgnm+1pV8e7tB2p0Vcv08XQqFnRZrguGgvb1KF3mtp0TdZAvRFLq
	kg6TeLJ6fQ3s5AC0RG5tojlNMeApKU15wFIW6x5aQs2gWeUBdpx8vvHot9UFCgign4j
	Kzgk1TWSfvOGX08kTreqtqdGiJkNjpbsysfwKyWc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018084e4555f-db19645b-69dd-42b1-b3bc-f62185c7b797-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3078a34e949811d4373fe49cbd96237cbaf1bcd47be09facf1b676042276297
Date: Mon, 2 May 2022 13:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651496998
