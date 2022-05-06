Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFBC4620
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 04:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651810738;
	h=To:Subject:From:Message-Id:Date;
	bh=OLstsY03kEe8/QtdcQ0wVYKVZBWR3OG5K8UXYcddslw=;
	b=PSaZA0tcHwUm8/ViuXVheJvXfc1LICHf6XzemM0teUCi7ziZCzPJJgSHryIX5MRu
	X5GagvBKxOjXswSAWe/uzt0VSzwEjbFx6MFcj74GB5PH1gFCXn7PHu+5PLCJpVuANvE
	rOVZVMDKT2G9WFcYWbn0bZvgU9GrkBqAou9qBfUg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651810738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OLstsY03kEe8/QtdcQ0wVYKVZBWR3OG5K8UXYcddslw=;
	b=ENZShvKt/9nZvFispWKfWkgFr4qS+ny77RSEB1aOtFgSX0+jrC68I0H48c7EOxJr
	jDAIKpbeWV4Zk1xD21SUlfEMhR/s7t4uePFhz6buiuXe9kOymEQ3cXKpQ/QiIgr16wT
	r1o2O6kq1jtHPB6XaTzZ0nQ/qAN8Ya117sRmU2Xo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809797a03a-26c307f1-1d2c-4486-8426-e8f79da32197-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83e285be51dfbc894a0d3d61a80edc622b715ef40d03337ce690aba762f1f917
Date: Fri, 6 May 2022 04:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651810738
