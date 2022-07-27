Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE0E7A
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658935252;
	h=To:Subject:From:Message-Id:Date;
	bh=aF+vuw3Z0XrST0jFrUA1Du80sHkEm+HZSTwVufOSw78=;
	b=WESX/DzDows95RTvUgz5XvMmUh4+mX8EzTX1LLbD7fZ0pUhW7YPXAOiFD+9PjlqD
	mDBkeY8w5ngGzWq4NTaBTCmZmH1wm+gDB9rVn4eu7mG1FbhzX6vFEE7fc46mWdUBrEW
	/jjsY3ZBH0esJ9mgAPJK06MbtEJdpbuIneG1R+NI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658935252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aF+vuw3Z0XrST0jFrUA1Du80sHkEm+HZSTwVufOSw78=;
	b=HIHyDuzynvviA4wb4BYe6Yilx9bkUDLnfV4sAhHDIShu/Vke2nCxJGOAyrXmqEYM
	E72+GBtzsIJ3ny48Bf7QQRJjUsa5Bb+IsZBRB+M1jQ/wRo+PeMG9nv5YAk2AM85j4lf
	XXTLHraEt/Jxdmf+ne6f+sM6sPznXhzQ3dAshxp0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182403f1643-6829b36d-8fdc-4ab1-9491-674584cc4486-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4994e64a0907d62cb9fc14dc441da91819659572b46d5b34c5980e88e9ea3b4e
Date: Wed, 27 Jul 2022 15:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658935252
