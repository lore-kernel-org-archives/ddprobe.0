Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2CE77B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 860F0C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672976487;
	bh=E/2BYOC0LKm65WuwAwfWSFwkscpWrGZBDQcEps/6zhI=;
	h=To:Subject:From:Date:From;
	b=m28FWekdNgwFN1jvUGV/2gprSHa+xUL9AeF9b4yY1pwmwHvrlry4WAzcx7XgEw1Ff
	 sdTd4WGYyRv6tiQAY8y5oY/mMPAEh0vCRlDZN90kybuI+f0TSVcMtYQC89oBiYpuON
	 B/ADZwAsiFuglMfBXK+QvV8Iuhkc4DuQkiwN8VnsxeH66XrJZK7PKBnRSBQz/+Zevz
	 e8HEInM1n4mrO26tVMWJ1sFEUTgt4U6Bf8AR1HQzgXY+Zvx7CjayCJO08Ud44UWR/n
	 dNparPY/kKBob2Uo08n+V02U6xzdBdm3yFPFuwMWXr+7psegBOWDYi8LE7OHVhMVln
	 Pf5bPnCqIe3cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C916C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167297648743.11814.2453436702788105616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c273eb85242b8905b835814def0f778698c87e1a0bbd7629c0d01e1a9d7b48
Date: Fri, 06 Jan 2023 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672976487
