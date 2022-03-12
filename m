Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78E744280
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647087384;
	h=To:Subject:From:Message-Id:Date;
	bh=b8VWtippcePsT0GVkx/PLkFm+aPPybtKVbuL/NC1ZZ4=;
	b=O34K8Y7ZQmupnnaQYvvFfMgJU97Q2b1Izxj1CB1IgWgfClvnK6C/9pWh0c+EnQwV
	Bi9nSbrqy25ZxPQc1P14ZPJ+tSBLgTZUi0vAH2AGzaYkKk4PWi84NVjccm2JS1XaxEq
	Ws+H3NBCJIEoaBHFvzdxj2jvtjqxNoVC1X90F754=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647087384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b8VWtippcePsT0GVkx/PLkFm+aPPybtKVbuL/NC1ZZ4=;
	b=iB42omZt1zQXfbXIhGMF7/9cyR1Ca9aJgkPqENW5B6rJo+mV0vgKGAIeIAurW/UL
	BzJlp127b4O7QKQRRyUGb8BaTWt9AhQMalEO3RsjupxmYVm2tqmMOxUp83w49B/xZ+N
	pGEGMTlt2/qxtDEIKl2pSM6S9cZgQGsNXxez5yCw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e0ef89f-4dfd5466-ee34-473c-80a1-899166cd0628-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e286fff3de69574fe9774e960693d71ba24ee63e9cf5cb3c31928a0da7343558
Date: Sat, 12 Mar 2022 12:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647087384
