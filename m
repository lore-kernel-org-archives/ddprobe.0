Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BC12C9E
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 10:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657104412;
	h=To:Subject:From:Message-Id:Date;
	bh=hFcOvQiuxtKDcGKONW5llR4mN84rIlYDcJH/hYudhmM=;
	b=dS49hOLWOkzha5mFXOHJrxt7SFl73nmnBLYK9aeiz1U266yEtLZ0IXIN/A/t/SIB
	WJtIHzpZJIiO7v6kesff7tPWmdtb2QmHwyFeweXsdV1o3ecoRCHi59rV6TieNX3f1zl
	TxqfL/mBUgeYjtwsBcZL6MdoAADTwl6br5rVGeEU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657104412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hFcOvQiuxtKDcGKONW5llR4mN84rIlYDcJH/hYudhmM=;
	b=cTmjfz69khJ0oWDIMC6psHzQ6OGEKuNisYHpSoGw0ehCZlwzFDGf3Lc4/Z3wEFkK
	BMK178oZX1vySjMGrMRsnJmxsgzT1581cMjMei7kqrY3g0B+Cz2XkryKK3eZ+q4949j
	gwSLQYdRmW51uPyPcyj+30E2rM4MiGxzZvLUobOs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d31eae4d-905cff06-b870-406c-8a1d-3378c975cf8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49c781e2a1d1b3f8501d23169bffd5db1f51863944ea6af78ad0a32dea5dd132
Date: Wed, 6 Jul 2022 10:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657104412
