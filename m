Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD617A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 01:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653010859;
	h=To:Subject:From:Message-Id:Date;
	bh=JrxZ98iEuKq4hJjMfaHQnSkx6z7FMrEN0FYBLe6+rwU=;
	b=e0rVKkZrwPSY+AZoefc99Ng/BU+8yCCQ9El1ECZlUTCbZyp++Wiwd15E92N7QT2X
	jwJrYP0X7yR8ByQ6AsL/WKUnKq4nJ4gX6ITVz2zl2lwJWArR+QgAoVKtyt/51mC/Ebw
	A1URgPz0Snqk0HdxYn95COv3VB54jYcZ5G7Ir2Zg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653010859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JrxZ98iEuKq4hJjMfaHQnSkx6z7FMrEN0FYBLe6+rwU=;
	b=EuS2TWfaRHwsISs9vI8Fp76+hLC6zlxiVKgHaC0tC1snVO52gjTzocCgJdrnw7QE
	IKb3RoCfKzBkjk6rjsPvLpsk8YedW96pSVkUG8xw4cCWUdo/I9OP9Y0GwZZJCpeMWAM
	52i5vkVqscy1YsTM5NDDMK2krMJlzyFbxb5vMPUE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180df200555-6988046a-9c98-4a0e-9083-4aae5b3a0ab0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06e597f5956541ed3f2d747eb09ceb9a62604c993cff2b8f60569ed81c72d31a
Date: Fri, 20 May 2022 01:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653010859
