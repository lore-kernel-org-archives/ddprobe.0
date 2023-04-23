Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7C4371
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 08:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1444C433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 08:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682238665;
	bh=SGmoPUXzk1+ws6Orp4Eg+dTwz6uZ16fbVWrB/pF182M=;
	h=To:Subject:From:Date:From;
	b=WKtwhRnjQfSZOQvOHhbqU2eGOd5OadJ24YJ/zXDXmuvrTekd7RkwxpejWCn20wFkJ
	 G2hBE6s7tsxvRu7AWPPoU2YGHVtCiC7aecCN4iGJeOR0rfpF1FQUVo1hPb3vPbGBa3
	 pLuGykXREAH8y9wtADB26JJGI61SS/PBibVFjSJ9yAAEh53UwYeSOmYgRKvLhFNT5r
	 j6VxwzydEE5MwIoCMVCclAiiNWgSVVPR8YCcDPI8HwTDccnXY1PCG7OOvhx7RY+2H2
	 3AkBTanM4nILoJHjfrFHbQpLDbEzi7DNylplZp3uH3ex+f1s8Fu52fVNNTiOxYDXb8
	 H0U9OgoVAjGjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31B4C77B73
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 08:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168223866575.32644.5557091715301845743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 358c31c187fe646cf66e22a8fc76689f8dcb66239e466bb3ced900f69ef967d2
Date: Sun, 23 Apr 2023 08:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682238665
