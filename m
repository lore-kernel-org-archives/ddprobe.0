Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B23E62CA6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 15:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B662C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 15:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668870654;
	bh=XkAfS37S/hJXxpVQc/SNHV1xUhMjxyxxmyvvNAOY9Sk=;
	h=To:Subject:From:Date:From;
	b=hhI6lTXSMO0naArOADMV6Zmtl99kb5Eai2b8O3VMLRC115Gr9F8FtCOjVGD7o1E5H
	 MiWnNRExIE2u4L/YeLCot0sb72UAUyqyMrHWW8evL1uzsQ+seoprnTppdD3nY1c+5o
	 en7YMzvFHdq1o51161OiHoi9ghavQvacVOjTl6WnlyGkkkalkXpeu8q04WjrQmfUIa
	 +s38tHSwDeP4ys+tCZmlJBWn0U/L5+8rrp6qf6w7IFOFp4461/GnwTQWbUmU9ZGCOy
	 jhyqIfvFbr67yyDNZWULbk1U8+YGnkzCM7fxugbNCw405pK4DNnsIBGQxuRXtO7SqA
	 LT+bUuQUXmtqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54EE1C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 15:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166887065432.22424.1669452465383528398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 805dfc27f865c32ad09094909ef0145665d82b1cf47573d8935f1a456a7740c5
Date: Sat, 19 Nov 2022 15:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668870654
