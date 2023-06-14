Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02DBE7F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 02:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67FFC433C8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 02:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686709028;
	bh=7ZiGfPtX4JxqDjXQsfzuah8mRu37h6+wpvaQX2n2Kmc=;
	h=To:Subject:From:Date:From;
	b=kf5wZlUBn9yqkWxum6QXBLyYWAOzGOzcYCJNCJBpCbbRY3ixMWYwPUd+5w0MAiS7o
	 R17u4UpyVHXgaM0Iia+gS/bBAmUs8WBZXkZV2Emogf8YH0dnkIbj+5jFKv0erKhY0k
	 mdBxIGCyZdrQLvoCit57VHpkRe2ni2GKUC4POfN70YOwtzQQMxjxLkQ8kSWQVONdEn
	 xlzWeBfiKammdvvq8TsTGaExv8gpBgXXFUUtK99AXKy6ajKx797spt7rToj6BUjHqC
	 tYMrxrwbvmWWcu+++tln+4REqo2Qs/RLhjS+/+ASg+2egChoDdL4F/G36BBQW4BiSW
	 zGbOEK+n40w3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B496EEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 02:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168670902873.9527.14045895634372892663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f4a2f118d344b4805be36bc905bc4d777cf9676d630991067776d217bab00b4
Date: Wed, 14 Jun 2023 02:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686709028
