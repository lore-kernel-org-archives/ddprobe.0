Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD6D7B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 08:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656492412;
	h=To:Subject:From:Message-Id:Date;
	bh=pIdDuzS487eOehYYjEAzQ5bLzyLXIqbYEbB2Bj0CO+0=;
	b=f1/X6UbHSNIk9pcFMvdiRsah2gA62SIrlmssEDCbMHEiRENB/gnEwSR3SEChue1R
	Ym67eGPkDDCKDtJG8e8tAGzHb11h3suKCFMLq6B1twpNgabk51CXPzpVT1xeUdsx7Y7
	XP1+fGOMjHxkiKfeOIjARiXWs5dnntU/iMz4clXk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656492412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pIdDuzS487eOehYYjEAzQ5bLzyLXIqbYEbB2Bj0CO+0=;
	b=L8zCBrjurlzHfVSbMzZqWwTiCpsHw/+lH3QNYvfE4TeN41xoWlyB3jUz+/PDp0fE
	918ok/I1+j6qtHSGQa+JDH5iCSyaSsKucpU82Z23QakRbUXuq6DXc1Pl3FACpdeM3VQ
	9lqx/Y4ZnlqGSjXWi2QmAiJaw5xLeM61MYto4TGQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aea44d6c-6ec57ba5-7e9c-41a0-a022-e2c09e09545b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5daeb2b66294d07a8ce270e5a460d48b3581ba00b199f1353784327204839e87
Date: Wed, 29 Jun 2022 08:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656492412
