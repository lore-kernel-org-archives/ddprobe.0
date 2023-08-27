Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF023229
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 12:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9570C433C7
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 12:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693137848;
	bh=dR2YH0ozxtLwex9Z9Bd8d8nAy/IOO79jLsh2SYRFXLI=;
	h=To:Subject:From:Date:From;
	b=XL/PQlvNqsREbXmaXQmd+dKaFVqtv2sSGVtt+s79siWPZ/2wohAbNm+YVBfNLKDp+
	 fCwSOmZS9sSBOs4Wwm1Cawq1hEs3KKjVc9bGL8Mylvfan4XKd1HwIKnIaEbQjMpJ1v
	 yFiGxFJsRQkPzW43B3oKAJh9iUTdbRsASLXa/cQYd3AIZr9hRf6Sl34V3N9Diy7Agf
	 nyKJDh7WMfp1UN98tgDVZQcmK3FxhyJ2IvNpgnsj994aS3+BoPL+gz9nsbpSKnUx1Z
	 67GEbk2akan4zmGCL1snYR+RUpxNfbLi/LrJrR67j99tDWNwzjAU5r4o/zh5nUgMzj
	 q4i6zIoKmY2HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13D5C83F10
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 12:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169313784869.32721.6110133163535457075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43be20eb60b836436d2f43f763284d1ef13197980c4697ba531809e7abd92941
Date: Sun, 27 Aug 2023 12:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693137848
