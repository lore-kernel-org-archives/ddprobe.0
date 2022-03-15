Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD907A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 04:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647318085;
	h=To:Subject:From:Message-Id:Date;
	bh=FGiIknF66TLkyuawCClu1WqqCC6iRW0q6qEHsV6c12A=;
	b=j/2G79ZHygMnyND4YiRINsRpb8YQC9yviwAq0PZjGPaxcB5Dcp9gttYiSdyc15W4
	oKLwQWamgNBAhgE03wLeOgQMpWPGlFcIBTADFqrV22CUeIezQ4HWW8KZ6DXSHiref08
	5O4vlHsqQeoHrqEQ6lPAB7Ph17V4vfOTQ8LzCXzw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647318085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FGiIknF66TLkyuawCClu1WqqCC6iRW0q6qEHsV6c12A=;
	b=BICX7URyc7qXzZYNgtx756PKb160vJ9BbX8/f80YFhi2O1xQaEjz9aVX5K79sD+V
	jnerT5ELKpFpCbAgFuQT3fgxdaQ83TWVoS9MaXwIZpPu0vSK7NzjUtBj4CaKSvd+68p
	5KLWBPYP6bTKeoXTZG8de/djYiHaRsUSHLbW6TT4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8bcf2cf0-b6f776a6-32d2-42bc-9e88-88ae7f6d2456-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0ad85924913aa27f5c30d2f6c403da7b8a4e7fa9d03eb5bd3df3b74492af95a
Date: Tue, 15 Mar 2022 04:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647318084
