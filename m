Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1707536B
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 00:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649463538;
	h=To:Subject:From:Message-Id:Date;
	bh=0goTcyonoU1CxTq2p12WFax/6UuYn4mH0cT35cuje68=;
	b=mnM8zG5XJrhZ9QloHELdHYb0Tmy1o3t4UkqExg565kqD2fQVCsjoK+g4fv1rsmDM
	YeAEs+tj4GdwPfEKJLLdPPvctxYJNGXTXbroRWA80OISzuEVmmDwqPnKY4Wn0rPuCX2
	z+KND3DWu1vrV1RczIKoC/mS+mWRoAK2VOajizQ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649463538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0goTcyonoU1CxTq2p12WFax/6UuYn4mH0cT35cuje68=;
	b=LSBfJ6gu6+2ArS1dd1UHyJ9Tc0Rk1Do6CEYoPLrhNjxpgpB27VwSjxOBKkTpMVtN
	YUwt6IRz2K2lR5KxdCJUeKjPvxUyI2O3LoZ2kBBjSsX48bkFVDe0IuAATDqymybOCNV
	3Wxl7xbJptileZ+6JsYzenrDtUKbWh9yA4grnz30=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800bb0326b-e7f48fa8-9bb9-462f-bfbb-1866bbb53809-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: febbe46e5d0eada2803b4ab773380977a1784a6e4996d5117f2ed2137721d7ee
Date: Sat, 9 Apr 2022 00:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649463538
