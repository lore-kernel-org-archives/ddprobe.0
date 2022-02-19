Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CA9513D
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645265184;
	h=To:Subject:From:Message-Id:Date;
	bh=tgRfq+QwWRF6echKDvg0ROu30hlfY4HzZb75mCkviwc=;
	b=RSwp22oet2fIjdZumUw42vKp8bQwB7r7VW8v4N1LI0W1gFFRB3CBKpc05jDrzify
	Fs2p8dsAJrPUvPEMeFwNd0fjPk88ojTK/xZ3EMG+B2ndQ369bCrVmRXzkn4I6YcxeGS
	TRbf0PZXgpmdc8j5Li+jUSv+H75TqtN56qtThmj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645265184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tgRfq+QwWRF6echKDvg0ROu30hlfY4HzZb75mCkviwc=;
	b=dg6T2CPHDdXjtP7C7hehzMwEhQS2x4/xkaj5xUbN6nqXAa+nO+dojfBO6aUdhnBc
	DH1VUYxRtREqKOB4o/hhQkj+z6prxaKZtvIVnOZprSuX05iAsSuCEpyGmOiDkTtRboY
	NHYcmb50s2zyDGIqPOPnT9sLuW2+Fk10fQ0R4VDI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f117267e6-d486a5ed-cbd9-4991-a10b-11ae9cd8929a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcc82aeb1549c166a56b83e5c80643e139f51f6d5e599857eb44f536c8f0f0e4
Date: Sat, 19 Feb 2022 10:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645265184
