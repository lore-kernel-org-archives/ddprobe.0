Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16A24411
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 16:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657555612;
	h=To:Subject:From:Message-Id:Date;
	bh=4oHTXt1+GGDSYZgbTISTL33d1Vlpyz4Gxn7BxTlDFJo=;
	b=QhN/aQeSxFk77rI64aRhlZyVUelJOOI8gwf8lIfKozuSEIqSL8SmjTx8+f2W9IIT
	C1mVbdVAl88RewvO3ZRqcrmSaimJF3knHsWXn61larf2j90+ZoQ82Bf5ZQ4vauwiFFp
	oXw/3GGwfEWWanbP3uOpCtckXH4hi/Pr49urEC8g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657555612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4oHTXt1+GGDSYZgbTISTL33d1Vlpyz4Gxn7BxTlDFJo=;
	b=NhzHT0mmsGjbz3vZ416O7EZb4nvhQnclUo10aAy0xrZLrgbrtegNYXDbMx8QRGoz
	oa7c8B4sRiAeGKtL23PrXm380TdaKPOn16nhbFma7W+v1eW47RBl3RN8u3wBQRuA6eK
	v56mqwPXqXJRWilYFntExBa/0m0LXqeBrZHG8IZA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ee03728b-c6653e0e-c3ba-43b6-b0c5-542c36ed938c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e85c1dc731dcf3d262278116de31b46a70dcf79f6d748b439d10980ce59729c
Date: Mon, 11 Jul 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657555612
