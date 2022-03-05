Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD47DA3D
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 08:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646470584;
	h=To:Subject:From:Message-Id:Date;
	bh=YAlOzfmmG1Im3U+DPMgUvg/kuRQz3APzeqbHpwWvG8k=;
	b=U/ePVev/r9+5n0xsydejBkENzcu6COL8fS1+waOrez3j+9FqwQyDTDPObY4L7AMc
	B0z/aDc9dMPCaydBnn38jyWGfO6dKvW0hRtWnlNLcZnhHz2chWEX3g++LI8JxxIrD6A
	5bWYzA1FksEEM2hWredLDlx61RoWfKNFtNEzkyhc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646470584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YAlOzfmmG1Im3U+DPMgUvg/kuRQz3APzeqbHpwWvG8k=;
	b=RJ//cogU3jMjKJ1Rkrn5c66IJ9DiHGUhfiQd9gqV8WfUYaZokw9yc2CZGpclxCWl
	AfOh8uBlvt+l/h+7nHUhZIVMDvYpP7oc5yArHpRmwFqWzF0Rt277+RUtcm4uV9ka0vt
	LGjNIwp74Fg8kGluVpwU22dFYyShiqPUaKKtpQLs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f594b59bb-e2e7e46f-a6c0-4b18-80b5-507191f65ac6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee28a53d818cd6be74979633a30506433d4692b19113c339e71ca8ccb8b1decc
Date: Sat, 5 Mar 2022 08:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646470584
