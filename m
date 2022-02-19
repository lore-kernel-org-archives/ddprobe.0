Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BDC5101
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 06:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645250784;
	h=To:Subject:From:Message-Id:Date;
	bh=qP99XhmnJPzgVpewB++Nhea4ac8t9TgIyzJA5Zc5UEg=;
	b=k3oMtgIisSCa4XkwYptpEl5P/Pd9Ue7rVyw+3sSRPq7wChdJClrarS9YZz9+sTu8
	u7X4isknOes3TL5oW6Zk7fpJIrdpQh3+cldP3ZtCxudXSnL1uj1Z/Yfbzk1Zr7x0NQD
	dZqPMFK971JKOqC9sXPZfFPJPyqiZMsR+MrabFQQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645250784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qP99XhmnJPzgVpewB++Nhea4ac8t9TgIyzJA5Zc5UEg=;
	b=Al75VKVV61mhy+BjFvbX0x/2zB+pLvNEYIPXP9UlbpA+0GS/35+WDFBDXxtlmvRF
	mGcPh1VTNtaHw+fuacvGeYysnYZo+mkjBTAeT5gjsLQKOyICvJ8cFXE/MI1vCJm28IA
	l066pdzvEuWv7z6X+nYm1fpv2EjiQSe8q5bQSDFk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1096ae1a-27dbcc0a-5e12-4e38-9360-2d85310eef61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6366c3a3c2aacfd4f9b378d26a84989f0dad22cd6fd108c81acb943faaa8c8b7
Date: Sat, 19 Feb 2022 06:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645250784
