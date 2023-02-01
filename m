Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3274B33FA
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 19:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D803DC433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 19:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675279565;
	bh=AX54GvG1KbFgYA4ic/yGMwkCbl+ZJc+FrE7+K6Xisi0=;
	h=To:Subject:From:Date:From;
	b=Noz6OvnZHEtjnoiVtSxbr9oNJylajsrMViNFsLDr89XhXBTH5HNhglR7ymYABqzIl
	 9BfxhzC8/wjcLWcEEI0ipGwShOdGoNE4XzKwHiNDajc+edafct4+CFXFj1XWcCMEA5
	 E9bDPYdr1irCm1hQ9lNI82eJT3h/+PPB5XqR6QnJZV51sk3spoOIrOtVJAc2EpmChR
	 n/EO6zcRhb3zkZWt9rxia0pmUirWU+1kkRx9LFvcqtYk2eAVEQN/WD3gldblxrFH4R
	 VKOmHoWFHP7WCC+e7e0kvbB718M7vJiWaCk2vXSLHJEWHR8SSJrN4Urd61yfCoxd9r
	 Wx5uxzf/DNVYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAA7C38142
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 19:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167527956576.26396.8369018116075285074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b012c80688dd2d1776d5f1b73f8b080744e6a4c3d8d5a53c296325990e88eb08
Date: Wed, 01 Feb 2023 19:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675279565
