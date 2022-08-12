Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2C9B37A
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660294253;
	h=To:Subject:From:Message-Id:Date;
	bh=cypqq5LryleI3SBoKq0lbJJIsBsgDUh0K36C/wvr1Vk=;
	b=TLznsBiMkK5jHguWezmKRmIm0l599bkM/VDBOYD2/rK3pO8xdsk6/2NTTctYkXdE
	DtuezeGX4XBbXJGcbUaPkNgIZLHj7g3tJY+I8oQaCVzV04y6uc1HOnPlSko5MU3U7dG
	IuElb7oNg+eOAMvb3gvTpA6OFBngCFrATnab1W9k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660294253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cypqq5LryleI3SBoKq0lbJJIsBsgDUh0K36C/wvr1Vk=;
	b=KQQiBSJ9YagfYoRTXIDybp4jIRoBo+qu4e8GF6Qc6XTAN1QbrELkpCbUDOAjObb8
	BrqdvF2aoZAtMdO2fFgeqRyvvTUnibpi43t600v30ZQfmivs7Vbo2Qr5Pj7qKh6Ccay
	m/odkeAP2NcLPLsxVZUH5a/L6It/LWqF86rZn9so=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182913fc7f3-352a8a05-976f-44eb-aaac-d5d26f300e01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 969d623f72f72b9edd44139c5a6e99e7f78b904c33eb60f9da8fdc7cf287c100
Date: Fri, 12 Aug 2022 08:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660294252
