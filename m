Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E119929AD
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 15:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656084412;
	h=To:Subject:From:Message-Id:Date;
	bh=WCkA0Hk/+RmMdNFatza8yoX86pWIa4SxdVm3drgxSnw=;
	b=cNrZl1UdtoiuPP/tSrgKAs5/T6iyoP22WKH3jhFrMVitpkInaBBuVtYji0Xr2c2p
	jwBfPo/EKrPpXbDzBH5Gi70kI94/AR/9F8oUwKMYOi37SGiym144jc2OssKXe8YNgE7
	MMoRN9HSlNsIO+qFAFue1/Cg1MIauiSpky3NdeCo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656084412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WCkA0Hk/+RmMdNFatza8yoX86pWIa4SxdVm3drgxSnw=;
	b=Yh6ZnNaA92clOziRa0PD4/qxQONKZ2y/ktPazFmJqb5XcItq14j0iWsY3XspyZsp
	VxlaTb150YpbxpqU+Q3Qg2qk2s7ubFY2ZH9w6LYeUkW443OppVsZwge6F0GY14AW9J1
	6SmUfxY5TWz4sclFmSNeN4Rh8PTA1+3j4j6sGVrY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819652b790-83ce9f53-7255-4107-abd1-0832ab741aa6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9606b91c5cfbcf0aba0141b2818380735b03660c89dc8103850096700dc74ffa
Date: Fri, 24 Jun 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656084412
