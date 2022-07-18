Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A942A20
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 02:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658112412;
	h=To:Subject:From:Message-Id:Date;
	bh=Qtlr6tNOnLLC2E3gDseVMPqlYOFGINYs7ekdD2Sc87w=;
	b=eZhXpyDClG0mK9VB6We/GsBhu64AoHhHuA1vTUfGW/YMVDKmmbYZkAOG5UmK4uKn
	GD+dLIKjXhTfE4klxGnHd8BfWil9shlJ2MCCLkVqQvQ7Ikopr85ZmbyIlqfYnQTWq2a
	11xr16NhNb2vuCXWXXg2JsCRNhs1+hva2JBCJS3s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658112412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qtlr6tNOnLLC2E3gDseVMPqlYOFGINYs7ekdD2Sc87w=;
	b=LJBaj5hhlh9BhLgA2L3nXY9XBV8bpKw+KN7IgOfcIWwGv/sBmJ0fthfe1rUUPpEh
	h3pwUcSECPUuZ9Gp/KV3RR+tsHnFalRUtxVUGZ9JMhU14cRmgPGsHSy15lUihrGbLDR
	6HxIjViL4ay1Okh2Z3DdJBOLWGmW47iEnDN1rom4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820f338aa2-a6fa91e7-1975-40f6-bb0a-652b2c68de65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c4df3b1a0e5d55eb809ea5f91c74d079f69e050a517dd4f447276b3d237c863
Date: Mon, 18 Jul 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658112412
