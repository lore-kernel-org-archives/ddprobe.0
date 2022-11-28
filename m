Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9EAA23D2
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 755BBC433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669629654;
	bh=TRUPETRaPZAwSfXMbfXQYKonrN000GGM5O2FKhZ0mCE=;
	h=To:Subject:From:Date:From;
	b=pdKVDZJU/G/6WrLIpVpaP2ayfnVFGyDk1twa3iEcYzfJq0ABnb1c4x/zQqAQ1BzGa
	 SNJqfTrsjHJkmvFyA08w8l5FEcMvv7gZHGNUayNQRJKscqhVaWphesVCjW58HZZKwH
	 pwXPV9tzpIwajHrMLKaqrXH5suvNozVt0zsgizrXrbVHlSc1wl0ISg3Zr+d5oBHLk/
	 bXd9nZDfXrd59CmjKY9TYxi5U8tl0DfddFm7SW8TBAOGbcU5MFWVNf/QGMWXXTInz3
	 mu0mVj7YSKYmIFCVOpVHfpE39cgQ3vOeMERuorjdjgLy7/+s7x04lvOqm7mTL5FNqA
	 9g3gXdTFkIxdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57699C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166962965434.15437.14089234581598577692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0318f84e7ba2644eb7c9b22455c4f5e9bf562a03820ef7d80222a8db07988d9e
Date: Mon, 28 Nov 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669629654
