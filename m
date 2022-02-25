Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592017B
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645776684;
	h=To:Subject:From:Message-Id:Date;
	bh=xtHjq9fqFFboIiQ/WMolczxgAU6cbyMNV6+8GaeLTUw=;
	b=l5rkj7MYPVtPTkgO0jG4qRunnrR3F6GQZK9Jx6y48fDSNJlvYQHtaHmzhlKK/41O
	j3wvhP0fzQoloZkoYYc/w0TgmAoXGbCRW29dcWEqz4iG9n+ZiiL9I2Qg8g2IoTaM3td
	jEBpZbjpX4kdGLcmlePcJSVWt2RtkKa+UcB3VGoc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645776684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xtHjq9fqFFboIiQ/WMolczxgAU6cbyMNV6+8GaeLTUw=;
	b=Ld6flFdnEZVZfX86hNGAIquZFsRw+W4nX3WQ+ExuW0QDroAQQACxA2dIII2MlH1G
	wHF5bxSPfTZGQAbQjeKEzIB3p2WknvU7zKChp05LAIhY1BtMA2gZudI4eQK80KGvWqe
	gBymF1g9cmw5b2iaEKo3k2KZjLHjsyir2GwtlfzI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2fef46d9-0686961b-7de5-4b0f-a921-372a84893122-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b21f9e7e24838905e737107c657c3ece76ac1c6a0655b8db1874988dfe1e532
Date: Fri, 25 Feb 2022 08:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645776684
