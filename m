Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70CBD7E
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 07:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647071784;
	h=To:Subject:From:Message-Id:Date;
	bh=Iv3oef2u+gEbck2TK/iG08Lvm4YIYafWgJ8rGDihvYs=;
	b=BgSiUwFwpH41/at3pUp+q4+iYPJqeVM5SfgYgY+MQUnpTDReUQ1Z9Uq2WboQIgZk
	hrr543Wa0iQZU2MJ/U3UuZKbWsxm/Hk+O/7VzI7zp2+qqlEh4jdN0rr/ASQcHlyLSJi
	3bKo/4oTwUNO4NLD/35nYyh69UAxZmGEWHPH0dY4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647071784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Iv3oef2u+gEbck2TK/iG08Lvm4YIYafWgJ8rGDihvYs=;
	b=Rod6Ik1WlFlXEuU6Tu2fkyLbNjje5SBsJHOjKWkwpsYYRjdsLkRW+HZuKMcjTsmv
	t3ekUm2Imeh8x6jo3+Qg4MmHkerCTxhUKVE5zCtVThK6cfpwPEqlxR8B7ESGxvNwk/X
	AT6yQgfEKPos6hXwm0eHd8bTmZrjPv3+rnTfsWBQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d20ef4c-397955f3-e7cd-43d6-84a9-ce3af6f493cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02eaf67e53377d14a5d5c8a5bb2d2f206adc8bd48f091215028e88e3d3c49dd5
Date: Sat, 12 Mar 2022 07:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647071784
