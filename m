Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86B5A6AAC
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 22:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646433384;
	h=To:Subject:From:Message-Id:Date;
	bh=dIsmry/66Pp3EFF8CeG4guIcynextGkfNZeFcngALH8=;
	b=RWaAvfe82TGzWgU5XSn05tA2iRyrbUD1k3i6wk1krNJKWGSERuUPBPWaAVNhzRNp
	SAioZrGgUjoVIgFavCgGPmTnJrDjYvpid9ZM5nMoXamDR1YBTcj92CEFIylacHWRVGu
	9ManeJBpDuThleu8vy5pkFcd3DmNGO0EZOoBjgfQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646433384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dIsmry/66Pp3EFF8CeG4guIcynextGkfNZeFcngALH8=;
	b=HUMU76wBCdo/EzmDSC1nGg6tGYDYBf0E4B42mR4iI5tUMdQL11n02Ji94lGCCeeW
	LMYL1RFwjFyqSEcTnxZrpBjMIbu1TVsS0Ws0PbXDOrER3ELooU6r2ymt4oHoN47r9ye
	E0xfqgbK8HkQJMpebS9F58cPTn5nQaWCe119jZ8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5713b93c-7a483f40-a959-440f-88f3-0823ba492061-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21adab4658e8a339afbf91853ca7abb18ad3a734b9d713b8e64c0acaa3949cf4
Date: Fri, 4 Mar 2022 22:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646433384
