Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0666B1C04
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 08:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D294BC433D2
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 08:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683448085;
	bh=RJQ8npQNAMu4x8/rrKKKTFIWL6tRyIz4FEvZQqlWvTE=;
	h=To:Subject:From:Date:From;
	b=jbmtd9I4TDCnc7dXoWanB8xiH2NvRAZAgmv+0HziNQgFFkb07GHicdQwnOwqhy4ju
	 Z1ijjfK7S0VyZwT3TmTEYfi7PgzLgqLMchAwSj6AACy+SVOZUAl+2184lCENEMlmWS
	 WTLeO8/C5TFlgdtLzg2gWWkNLAi5A4iRgzcA/qNO+9NlLx7CzmAdtKBrpljJFMXiuj
	 ksrEDQZXZn08R/0+VN88nL4TDCYKCw1Y7Ljue02VYYmdxLURSY6LbQicTMjKdn62rv
	 D11PJKhWDXkLzHrN6IW9kmgdgQFFNQ0ocYnkitEx5lA4EgcntleUpkDJWfo/efguic
	 diXVXG1hmHq6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A7EC77B75
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 08:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168344808572.9641.5994803689919421177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b8aa76cd32f9d9ce43dde4ad99f2b8adf69180b1dd671e3d4328a51461a26f9
Date: Sun, 07 May 2023 08:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683448085
