Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82EC9163
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 15:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647702384;
	h=To:Subject:From:Message-Id:Date;
	bh=h6PH67O/iu+Kly8O/re4pcn2PBl/DRcIceKFGS9+QZU=;
	b=QzMcCrm7Idwkj5VfCtq6Jd6VyqEDVpK6pvd2MHmZ4kly8sm+uHsqbQ6bmdHAdhue
	xy+n3l+zNEbSiP4RX/yBHfNx9EtVbouSUTphkbvVwVqFepeONSZyuzlf1nM9j8hmDPP
	/fBCAt9Yx1pcaFzocztbILxWcZggvxdekLUrvDOU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647702384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h6PH67O/iu+Kly8O/re4pcn2PBl/DRcIceKFGS9+QZU=;
	b=PZMit/wblXifjc0j76QhQG0xstBMGPrk/57NMsT8nndXEd7OOtRkVKrwKkBi4GlW
	K2+XHMaLACRkl+W6QHxRpY4gMsjBzGUeYOAoXNksQmMR2lKN5ohU4SgKX8FB0F7RmdA
	mRRZVkg00tHUMcK4wQL+SZMYyPf6DeN0sR/AGcZk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa2b72081-95d1ad79-4545-4634-b3a6-153848615b8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04334e67a026e4b4e5c2a8d9f71e4d9d0a0dad4805446fa7c25291540bbbf96f
Date: Sat, 19 Mar 2022 15:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647702384
