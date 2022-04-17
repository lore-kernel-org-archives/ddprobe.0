Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156FF2594
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 19:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650222778;
	h=To:Subject:From:Message-Id:Date;
	bh=1HQGoGPv3PRmI9vYDEZR7gUqnoPsSKuf76YxbzuWILI=;
	b=eAQVdPRwe10vSYb24TRq57RMuXYeNWJt/0uyw2XcIT/af3Fk8Ny3HVQA8j+XUjiJ
	xMSt9CPLPtfA2or3H07IMS7Bg3bkXVleliBr8hgaPKbQfn9h2TWYGGNQ9SolEBgPeJJ
	n+8SBodoydbNpejqOPX4IcSPprl1lJIk2Dcxp020=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650222778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1HQGoGPv3PRmI9vYDEZR7gUqnoPsSKuf76YxbzuWILI=;
	b=RCMMwLC6mHN4i+8PT5CxhALlJMQoruOxf79T4R9RDbQgcrzic2wjTJSHcfy+WZh7
	0/T+Fx/uMjA6nfbVemGfX/SoY/ZB52f1LOoOf0Cv+U8svcw3kcUk04XahXD2UKgE/Yp
	oKhLuWd3a7VkMamVC+BlCJDxD5W5rSM7q5QE21EQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018038f1479c-5d7ebf62-fb53-4185-9dda-fe54636276b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3443627a064fa74f1bce3e81314618ca34a132814a653c9818dcd28aa6013bd5
Date: Sun, 17 Apr 2022 19:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650222778
