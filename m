Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2714A3B
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661200852;
	h=To:Subject:From:Message-Id:Date;
	bh=xqkl5/LHdvpfaCEvBaGY9k/K21qVsfToUNdcycnJj4M=;
	b=P3lpay5JjAvqjr3XEDgPiL2zyNO/cCHM84fRe5VpJIWORNiDgjFFT2eIeG4J8uPx
	TwA2EsHZ6FHkTYEsZTmHnfAVM0pB8d+S0PjcDGkGN2TGdcih9xca8H9Es3aUVvPNwqs
	FGOPEjvX5uMFNlR77SiO4uwWgdxrfOP5Y0+JAwVo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661200852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xqkl5/LHdvpfaCEvBaGY9k/K21qVsfToUNdcycnJj4M=;
	b=UEdKL414C6DbpTls4KTE9f2bzPBhtwGpnJKZV/vSs+AurEYUq8lVuzom70hIJ9yp
	XBPb+Zv73Kr8xJvUg1rfYbaBbuKRVIw4cftj55JuXo6nRizjik5h2/nh84aVMkFl7rE
	I65vmHMc+chBzy0fQuCxVnzshLsR1HZnzlb32l9Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c749667d-6a6e1cc4-4165-4dd3-87c8-8e9de32c9c0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 122ea1f554634852a06421d6dbab378c201628692602f5020671422c13ee55aa
Date: Mon, 22 Aug 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661200852
