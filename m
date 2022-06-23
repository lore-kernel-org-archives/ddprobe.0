Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AF0643E6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 07:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655970059;
	h=To:Subject:From:Message-Id:Date;
	bh=QtJEuOmiLSoHRtKaLqeuUZ6BmbnlorQY+3ZWkAhryts=;
	b=S6RNh6KqZMX1rxK1ICcu7Ty7yHHkdoVlFelDjnXmcIoL3afkNORV/9OoxjfMhRrf
	FQPH/LnQ7XGC/tds80x91roysVmRjdSNq8LVLCS2dfN9GxbIYPB316td/6mgoEcLiP7
	vxMtBUctQnlpfCFBoKf2mIV6Sm73v3yFYZUGQmOY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655970059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QtJEuOmiLSoHRtKaLqeuUZ6BmbnlorQY+3ZWkAhryts=;
	b=EBKzIZE7AHK4+Vjjn8suBGk7vY4Q8oDGa09N1EYSilja7P+3Cna4mrB/FRA3pOI2
	xAANtjIBTOKuVTN0pIt2VA+2RATx6uopyjNvtbNdYxd4KSDsoEb+PJ1q/DCgSUPQf7k
	9J9dN+qa8DKIYpSq20OZD3cKu0kgAZ9Cm+pbTat8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818f81d3e9-fa12adbc-0272-4beb-a69b-859a1aee2f8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5ad85d2df8b92a41ab10f1e01f066864797c89cd16fbc3c9c7aa4677d003eff
Date: Thu, 23 Jun 2022 07:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655970059
