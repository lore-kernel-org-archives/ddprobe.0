Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2B6160
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660090252;
	h=To:Subject:From:Message-Id:Date;
	bh=1QFI/TvSex0ylkC2ZUq9oXW8V4PHzPt+O9H5FDQyc1g=;
	b=MyZRxY0bCnOLma5t3ZhDJUOHif+Wi5Q0anCt4p0qSQ4zK9S7cK0m6xSJCSi4ORa1
	rWvijDYC6dPQYj2GsHphaTsKCz49FzT40yzm/IR6rcFbAoh3dZtxsypuoa3xwQM/Y5z
	HfWAZIX58knrgskttuwsA+SL+uwXjeSY3f9DHFSo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660090252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1QFI/TvSex0ylkC2ZUq9oXW8V4PHzPt+O9H5FDQyc1g=;
	b=QjIyy5JWKSXCLCnMnVZAhrCzLLRh6O8Hvdn7FfQGV8ULVwUiu6hb2Pz2hte48Vs7
	C1k0DgPfk7HP+Snx9+MgIJQNXHDJ/Vn3Nlkksni3LkFECYn/cu6V190RkfjE12Y5uVA
	AZIPzmdfYuioUMR9dE6RMVUa/EQxk9ZOMXFy61jI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828516fd0e-84e84b57-20c6-4648-8478-cd1becfb1774-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27c67815f282e6b8602ce7aaf5d1f7598a941b4b92a5398e37c291d3bdb12b9f
Date: Wed, 10 Aug 2022 00:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660090252
