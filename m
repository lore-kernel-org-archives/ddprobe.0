Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79592F2F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8021DC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670934087;
	bh=mxT76uIwFQkL1VfXyszByT+jH9JuiFv2daYA8TTD+3U=;
	h=To:Subject:From:Date:From;
	b=JiNQlBOvmflPJVpbS7LOnk6WSpHAHf3f35dv7U+vx2tFGlixDBCveD8u04T0Fnlqf
	 +mGN6CNICd4Wm3lYCU6GwUwA3Gn6QdGlmPGum0phiApBSz/mH5AsGKf82nyXkq/E34
	 viQbIIjMEVhOZHmS895h3B+9V2T+O+vFCz0xOdaIraS3cSTF8407mu5jC/ZSMlxX7F
	 v5RgMJEks2+j1VboGmZhunJhTHZKAwC5RjEOj5xem1NVpchTxDoSP+hXNPDpOKRTAG
	 dYTb69bjUQ6yiJn5y5SWdK5vWwRE1DCJkvSKi5Y+5jy1SJlmyt97dJGNht0AoaAxaL
	 CxpZNXtQm/t5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64014C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 12:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167093408740.15282.13375136245416247065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bd0ed711fa96faed83cb2e14cad0eaaa0a944f4900134919f8f38d5b13312b1
Date: Tue, 13 Dec 2022 12:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670934087
