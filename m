Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BB987488
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 20:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC341C433C8
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 20:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693427048;
	bh=jS2yxmW2mIBVrc/Z722Ft3cFjq+wl/ZO8LjNA9C4ZYU=;
	h=To:Subject:From:Date:From;
	b=X6ebmMpRK8K8huiVLYjxTd8O0mKEh03yvaRqvrYzstTo/WOlc1ksQML0pJAbjkrLx
	 a4rd8D7mf0AOLNhSxZIXuRIHcC6dJrE9e77UZSu6tHMlcoD5WXGNyeSyJVz5Dj0cyx
	 lyO9cxQgkYpbLPL075kRv7BO6ACrbIZECT5Lh9Yp4I8jk9blnUKmTLw8DiQJokaY1K
	 2BXH6O1nupcuDq1AcSjhzagexS1E06g0ka+mlNlac1GO3+X/16vdNIEH8e0daPRCfT
	 1FG3kQ6gZZAZqngoRWzsiZREWEKo3TWyvbkWqNxRL6vmvSXdl78dSdQnDTwxUWJ3Yd
	 5Rb2CKe+vuR1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD57C83F14
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 20:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169342704870.12104.13901679724976191495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 762e25c4b7004b7a76e367b432bfacc426f5fb66a8f431f0d968f9dd5f0e2846
Date: Wed, 30 Aug 2023 20:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693427048
