Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C6E27F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 03:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655436180;
	h=To:Subject:From:Message-Id:Date;
	bh=ljtwlTI7ZahXBUtjT8s+fCWng1C++dOeGma+udOTGLQ=;
	b=icDmjySgs89ZNTB9Nwpnd3AcmsHJ7cVP1gAvVfscnXOE2IZVo3BBarJ4iKCbqo/A
	t3/evV8TCPfkWgkxgvKdpFBJ5UpZtsG0/qScIuRVU7sHIEfeaibMojWYfvap+jXnYwz
	ohg2p6RRS7ZOIM/cHqKUrDicnSn4nDBc+WwVakCg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655436180;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ljtwlTI7ZahXBUtjT8s+fCWng1C++dOeGma+udOTGLQ=;
	b=NsZpe91BkNEc6lJ2oC4O7f7h6Fj82gpwElvutThcdClzohOL+PfQ8tlx7dseUkbw
	w/ONIGZLUQgIlEv4nEg65lApbJmL4cNEvCwQZwpcmcjSflBhbiK99YeIp5SK/qsxDQ9
	6X+XvOjUW79TowAk5ilwHYXw2p/yr3g3QGsHLBV8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816faf770d-ad6dfa47-142a-45af-aadf-087af46bccca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e960e8d02e3c8fc3d2a6523b6d99d3a049f41800a07a03b7f5e802aa6e8dd12c
Date: Fri, 17 Jun 2022 03:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655436179
