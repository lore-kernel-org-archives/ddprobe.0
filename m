Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C51B417C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 705F9C433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664785253;
	bh=PX/mpSY1OmKGVgesjC5PC+s6LJL/q1qECEgf7RRPlcs=;
	h=To:Subject:From:Date:From;
	b=t91/M4QhCGgUBGpJzD3KfYw5w6d0hUKRL/03g9WXkHm9EmCriMbcyGpJiZCnz5qPS
	 MYcsWglrJVp91koEAPZ3B0ctDYjwUJ5qe6ejXaNw8+zBwsovBXAhM7t+KSXUSUWoQ9
	 f3f74SF/nGx73NYqpD9Q75OugIdq4akdqo2pXwpdwjVRs68AMr7FkuZsgD39rc+d/a
	 pSlafLu2y/mxTx1C+RpOBWaoq0d6N3kt/5RUtha+lpizsIv2AQZC9Xw2Yqg6V4X64H
	 r6NPpQ9O478iW9kKZcJgepe0osOTNuTm9uyTGI6Q/z5Dfcdjx2cYliqeRD04gaKG2M
	 gg6b3K0Ec6PqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53359C433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166478525333.9937.6754470539763992229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f710f716b9e65c03ec777911eaac92ed2e6fb93979fb2ece23bcf6baceff0dd0
Date: Mon, 03 Oct 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664785253
