Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED7FE7C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 05:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656136612;
	h=To:Subject:From:Message-Id:Date;
	bh=NG19+J3WUbZTZEUopYUVcSZ3mIivy9eDTx48DaSbFkA=;
	b=EgAaZ1I7LPkM6QdvhNZkr9EjVsVV3AheLnG3e8UNSx6An3XHyw8JVHDP5R7r4OS5
	7CdSXbIEmlbBaapsDzyR7QfUBT7M/dTbPhpxMSS7Z53LHVQmpXmebWPkkARqdXHX8bm
	1MP01qKQDCh9r9H+GZSQFeukt8PReYBjDfpl31Fw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656136612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NG19+J3WUbZTZEUopYUVcSZ3mIivy9eDTx48DaSbFkA=;
	b=IzhKx87AbFYDeZ2h6eJgyZWgfI605vx3g/NrbExGl/d8BtWphF3SSASoAnCRsOnL
	1cq/CLbB0t/id5Du/pGUNQa3qjGuexgATfQ1tY0AFFNJP40Pc7o8clRc2gZuB6EVZ6M
	f2Nb766Un9N5OWihOuzUzh4tEV9vmMbP7E9dwZis=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181996f3987-3c4bda8e-0593-48ca-a5d2-c5eb8d94f27a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8eef3b9587d5081e86cf0d18e1dafa2288c3a5d62abd4532386897878e0d36cd
Date: Sat, 25 Jun 2022 05:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656136612
