Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDA0A4E61E
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myy68Akf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A2A1C433C8
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701979696;
	bh=aXORzp9N4uT9Ct60Vlz+U1wyj0erOlPCIAtYneFAEnw=;
	h=To:Subject:From:Date:From;
	b=myy68AkfP0CXjLI3cS2rGqIyTWTLAH7jiVjBKGavnAQoZmih2RXguseZqbvE//NDL
	 DvGTQfXK9HaWczrP1vqT3+qHU0U/wmUuVMVTN76zUEEiDAI/USnWT8tPsI2aeyggoU
	 INdbmoifEt484oQXXGDDCQaPLexbkaBOJ8KUrTd1gR1SWALUTIj6cEX+tUSnBOSwkh
	 q+N/HZBkzZzedj04YlLcIa8Q3R/pINPVgkamni80HxkcjDiPXZzhTSDI1mAhssnoHN
	 Pv/qoxkeH6bDMGvD8q0Yv48gkTsyuXqr8fb8/EOmrmCDUWshRavENIG8VhKJzs/lA4
	 5J8su23CgSE7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D65EC4167B
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170197969637.29878.18089595474431173497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ba34b42fa7a98d192e7a74fe3259329f93f8e2a1a3c6718217350294037333
Date: Thu, 07 Dec 2023 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701979696
