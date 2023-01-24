Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FA7322A
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 23:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1570C433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 23:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674601985;
	bh=qLo2e4XTNPtkZ/TW7b3Man6AOuk/VuM1OUrCKbh9pcg=;
	h=To:Subject:From:Date:From;
	b=KqdqPasMX94ZgdbpHdKI9n/iEE8ohsgqXrdpCyZonO20Uu8vQm3ABdk1ykl4+QV7Q
	 yCo7FWfX9xuNA57Lrn82HWfvru9kUVVML4UwktNLNb0qzuRhSI+vT9/QS8NWDZHdv/
	 S84Y8k9xwUxMbss1To/qDZ7wLNW5FgUYBIPTX4qTjfqd54CSSlz8a48VwKDquP3jfL
	 GE7mrrAnAFFey7zj1PElxjPJ1D1viRHAVaOSHj0I47q7LoUtQ8yBymjRSIrOHMX7Qa
	 6VoWDt+NtU6FxZdaQLqQrRMCkbRfZyeaqpGgRrHd/GkzAvQpBAaQsOl3FrC6TzmGwJ
	 iOV8RIGuQft2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7810C54EED
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 23:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167460198574.2123.5382259041733770225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc81c30a0b12740155cfe4635a4bca8bb4f8aea5a94093d4f7cea30b6c784b39
Date: Tue, 24 Jan 2023 23:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674601985
