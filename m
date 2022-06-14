Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA721FDA
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 20:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655239259;
	h=To:Subject:From:Message-Id:Date;
	bh=SWxmKz5bn0jaGkAC0kEEbdsRc9uUBXPbPd8p3+Y0erA=;
	b=AheboMecEaYUwN248AzO/3PpfD6R4ODWhcYvMA2oyvq/7EqFMpxjrt2u4f1p4Afr
	nRDOX9no568C6zMN0Lcv9eF3OTqJU7OuyAw85dzXXhTJyThHzAbuHBB5BUk4DtA70/P
	BqEk5QLOQYdpEaROz7zeU59ZDqO2vlO6m4Y+zvHY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655239259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SWxmKz5bn0jaGkAC0kEEbdsRc9uUBXPbPd8p3+Y0erA=;
	b=O1qFwwoo20sVq5XJIgjzRwQjgtnyzFFSJqus8T/oXykEwsOOZ77xwOmxZiieJ3bP
	Gb+U6NasOn8mLjIP08ZAM/Nd0S7rRyDJsuL3/BfK77xpnrs4jMfMB9Z+/qtd0vA6HxG
	oxGZBJSzNpKjCrEYp8JbVfn6ecsFv+l2ylcy7kEw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018163f2b4b9-a0f35861-e392-4d9c-a8d5-7504c310a18a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 346d4d63dda020aff168bdb42e1a107198c50713c628012e7727376fff7275fe
Date: Tue, 14 Jun 2022 20:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655239259
