Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEAA920F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 805C8C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671900087;
	bh=P9wdkzEdRql1mKWZOs6IR3g/O+R0qguIUJ1TjAc7uhY=;
	h=To:Subject:From:Date:From;
	b=RgQiiT40QBN6JxSm+qaHjRGtzOCNgzfFz64i1Oqf8BDXqhg/4m59d10o2zgya+hY+
	 p06cNwkv6/XVFQefU7zyYABZB28gHJHqObY4jsD2y5V59YzC4/YgI3YlskblRV9gxz
	 WZproJxsVO4rSEV/kKZnXIoXsntgVZ086bD60bd2fLznKas346/BGDwgMfCJBdsOaE
	 mG/6XQW260V58fd+HG/K0bOk/QcBc6VkEypdNCXnf4Yt9eoKLBC5We2JKh6MRpvdb9
	 dUk+tk0cyy7euEQY7gOOWLzMLw35n0STbKYWpUTX3vw9gm8jg/hBMen54HasFv026O
	 OdpM3RGAfwbqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6619FC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167190008738.17912.4056657944347978966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bafca2b15c326326c2fec59e4f0666c542b32fb087e0944c8ee14289140a796
Date: Sat, 24 Dec 2022 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671900087
