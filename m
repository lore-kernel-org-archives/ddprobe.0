Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B357E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 02:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FBEFC433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 02:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669602054;
	bh=NSGn/CrwclREGbEd7Z1yaulYdt0EpKwlRgFDGOiTl9Q=;
	h=To:Subject:From:Date:From;
	b=KCqw3uLuGelOaizBZo06K4SW0cdjlyZM3gbI3E45kvVfK14EzetXr3BwKVJrymkq2
	 zyshcZUAhjMb8rlt0aFDvKGLop7PDbcAI+cBCjqfUMY6QzXoapbCXBRSdnnm85O2w+
	 tOE3QWF67jviuF7CZe63tvQci0EzZPSSYc8za5JBKSv6edVJbwU7gGBRfcoSyuhOEQ
	 zsuZJyhZ312bdXuBDSVCNWuHUK8CEv+Lq6cCfc4TUOf9q8YNbk/Hp/0doG7gXD5kjl
	 cc6NVxqhncr0pc4rgCCqyereAQt0r9kHbS/PA/wUARdAtc/e6ZHa+05T6MO9Oz5NJs
	 LyFm1MXzR1tfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62AF6C43217
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 02:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166960205438.8763.12547349286409195928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 012580a3bdabd4c6e7ceaa58cdb573594bfe7a2043ff6ace9535941dcf0da873
Date: Mon, 28 Nov 2022 02:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669602054
