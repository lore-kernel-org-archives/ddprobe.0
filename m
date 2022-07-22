Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1527228E4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 10:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658484412;
	h=To:Subject:From:Message-Id:Date;
	bh=txA1M0kF1PF4eUoYxcSZ6vKOgSkLArPJ2YxhRd+oBPI=;
	b=fmm+kvUNxWtw5Stl9BCvTDkcgbiWjlwjCrSLIOcqiKJBf0ryppE024wvYtXYggRH
	33LaCVzwgtTOenxc9uRH/7ZNacSDjhdpBQZ63cpo6oyzB89P3pqrEKWB/1bTq2UDoHF
	0gzRWEby1i2UoIncncFvmP/r3XDeX9NPM+dH4hMo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658484412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=txA1M0kF1PF4eUoYxcSZ6vKOgSkLArPJ2YxhRd+oBPI=;
	b=fV9icfsRu7jJSRCqr4nvGNwXgC7Az5aiEOtXJE+2pMpUPZr6Zd6LLZO0T9St3RvD
	pK1Dw1nPH0S536ElnVyPu9oU2fJ91rS2Qnt8VwuNcmTEmF8ltQR0ZCj01WUXcRKvcee
	SGjocBp9Dh8no7uP5GZyTs5MHzCuF5Fn88sHjwFM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182255fcf76-671d2cf4-a002-4579-a23c-dfdef8b18105-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be7e1604e1308d72e5bd7bbacae1413a15ff3006d3a2774e05db977949290891
Date: Fri, 22 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658484412
