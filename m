Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350E84432
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 12:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658492812;
	h=To:Subject:From:Message-Id:Date;
	bh=hyedSQf1DotJ3+ZHLTcQnMEv6n7YoOshLDnUNgcZZWs=;
	b=XLz1O3GxlgTx2LsBUNtzVL18A+7lRVUAbzIYd5nRg+brGNxyVpZgWFF66lnduVi1
	OqrGFZU0wtDKBjVLHtX8TGAM0VO6wmaFVevDKUZErtg8eEXsAStcVGqkihchYBU3sNJ
	5VTbAhrWyLXA7ROvzmtsJN5f9IE2LZ255Jt50bxU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658492812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hyedSQf1DotJ3+ZHLTcQnMEv6n7YoOshLDnUNgcZZWs=;
	b=IoHm61/nw+5p7ClLn9grtDYbkgmzEzwTBwSSK8EIyYdhyNXB8CS45x0kSf72RXTF
	2PArA3fVjbQDPkEFpqff2IWV2V3dQyVEx/kBLVz21f3n8dkA10WEXSlB0ny42wshl2w
	4rPKcdG8jOQ5mi6SEoQZ6vJNOo2hsDtUffFnpblg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018225dffbd2-5bd6ff30-379c-4ec8-af0a-3966cea542e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b6f54e6cf85b24621ce6ac4b0551b1998a2174c0173e40562beb7f0184ec2a9
Date: Fri, 22 Jul 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658492812
