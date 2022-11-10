Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D811E9E4
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7632DC433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668118854;
	bh=G95OLZziqVxn7dCDPFQ8rA8TfFHbqIC1KRbwlIeRsBA=;
	h=To:Subject:From:Date:From;
	b=Cfj3EX49ygYX31vq+n371XWecrav0vJKBnpIZF6UCWs/i6/LVJcl1AIeGEPx31Vzx
	 XrzR9FUiabDs0p4xuCgbDcN4XURjjBEs16d+2LhKIx5ibU+be+dxs7NJVyYmO+a9Lq
	 WspIzk9uV5aGYDR3wF8KF6zQVZSKlz1gKanUfCmIJf9LUvz77j9bE03dmYHIH+s3Y8
	 ajDITALCedjC+zMgYk5zmLGzGMijAXvsJiHsRkjItdX3kdvodY4+kHC/mJEw08hqmL
	 bnyHKw47uauI9Vq8EZbxiqHjK9UqHyuSjUaqXm2YWECryPctH8NbaDjd7W9EuJT9HI
	 zHEcB/fSQuX0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 571C1C433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166811885434.31018.18259221303908048779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b618d4e416e4b29c058bf45856b506202613846a67adab269ff42e73d260f6c
Date: Thu, 10 Nov 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668118854
