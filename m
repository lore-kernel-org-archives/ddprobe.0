Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B1D136A
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 11:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654343639;
	h=To:Subject:From:Message-Id:Date;
	bh=+tZYaBcob2Xvor3jr0k41oTIP8dJDASGo51VcrLup/c=;
	b=FqB39k7HML5KCG1WIPexn0YMxdiHPU/905rSDqk1iYhoxBXJM18/3sg930ZmZ2JY
	hApLT8WYerUVrf/dNjYc0LHxcOCmA+Pe7faXOPSEVfj12cRsJB7PNv+ruUNmfX4YSwi
	rD1/zgGBNRMY3/XrLFvsaLAH1/6enKU+PYkPaV/M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654343639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+tZYaBcob2Xvor3jr0k41oTIP8dJDASGo51VcrLup/c=;
	b=B0HB6POkHSbEJtDqkcfZf375vqDO44N3AGRN30Qs7E90nYZOvhAs/8LLYkQOjOpQ
	uhH05AGKJCCABZUMjiMpPXlnzsF09Ef0hum/eAU+9TltpfYXjNjHydBmnuwd+03a80i
	in0ggwVqultFsfIFwsINJHXZ1qwWYN2xtzWtH5KA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812e90a104-97e9c93e-62cf-41ff-8944-408de3fb420f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7749d321e77c765a464045b96e52d212e34e1f6bc1d8ae653c8c6631b9b5230
Date: Sat, 4 Jun 2022 11:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654343639
