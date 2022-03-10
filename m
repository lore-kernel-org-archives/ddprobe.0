Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E5927A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 12:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646915184;
	h=To:Subject:From:Message-Id:Date;
	bh=2EURwDsiGVLzGEqPNH4OKU2POvRJE3quVhSf4deKjqQ=;
	b=cjqYqgKNeAD67V+QYbJl4JhFGB9kgTcxmtaEYuQv/VNBOm/t2oyy1C5UhEzPZIr9
	vO1IUtAM2pxxAXLAxO9anKc+JE8yRJ1xugM/NkwCgApULfmEWat9n3R6osEZ4dA+F7h
	teffaKalM8vBWH4Je9tjZ2NKA3tAq3EW5G7jFvEQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646915184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2EURwDsiGVLzGEqPNH4OKU2POvRJE3quVhSf4deKjqQ=;
	b=UFzqzJyloF+V7zItsceObL6eu/XZPpGlR2X4M5PmfHMtj/IjCsB5XxH9YjSykEia
	N5/EB0LGZ2yuqrdQfNRDCod5wkwmEWbQD20ZtWLar+fXmv7ZCPH+fIwtSdO6mHnwfgN
	P3z584HjpEfk498qufCUNpzQZBBdmAUMZr7dT6As=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f73cb6898-b3aa78f6-57ac-4446-8dfc-ba88bb4aa482-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68014fa7b309710e77d0cef7eebdfbd8cf786d6ab98187e4f3f1a12b0e3583eb
Date: Thu, 10 Mar 2022 12:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646915184
