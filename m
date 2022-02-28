Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7789717C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 22:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646085984;
	h=To:Subject:From:Message-Id:Date;
	bh=TBvjGUpMx9TvJF8AYhAIcucC1qt60aB/g6JD7+WWIXE=;
	b=V9tgBi19W7K7GK44f94tsztRYSGl+/oqXGNKXXflQ1jq/cHOo8XzszqfdkfRWcpM
	edsJbyE3x0gOiapxbbywdTzVLvOlDmJeHuKL8IY/X3yxbBzupvyjIWTr6FSJlGP23HU
	fco0zprRn3h4YIcdOHqLdOPd9Vck7sjx1EuBwQE4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646085984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TBvjGUpMx9TvJF8AYhAIcucC1qt60aB/g6JD7+WWIXE=;
	b=ik9p7O0PUn2dg5mJf01rReXPCogtZ9CPPs/7e28T5DitTQpsbp8syd/djVCcnOWI
	Od4lpAnUEjnyLnm/SA0R7bkNLygfriCWeVhY9DsPKAHmfWE4hShcn1xQHK+bLNEB9Sj
	u3x1YZ1MxDQ+S5k4bZudTDM9Ndi3sMbxTTdB95u0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f425ed1f4-32a6e569-bd0d-48ea-a1ba-00147e3cf0d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58f017d547d0b3de262a687a9aa3c6872bdf05571ddb9eefa8a2a01fc9061dd4
Date: Mon, 28 Feb 2022 22:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646085984
