Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE2B34A24
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83E0BC433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666090853;
	bh=FAGr4T+Qgf4zf1nzFOd1WzLfvOxO7UGI7JrzqtPGGKc=;
	h=To:Subject:From:Date:From;
	b=m6nt8DrehBqyOL9AxvvO4ui0U66DRNtgtMFQrT4+pQ3SevAhvu57VS4eM2Qm0oq9E
	 EAfgNcJTZjxJM+/dmyFdS64y0QEmtRPWZ5QvFEfh0T3F7hFyBUHP6ry6W3iqK+/P5M
	 D7SkHvRBRczcPoC47af1ScD8aJ/7JT52KafTFqtgFHh+vVCir2ztpDnAdubkdA1jt9
	 IYFi96pKtfSygP0N2fS8T8MSzRth1+7chfle4ZiQxggolV+sxTkto5jPO3R7SPpP7Q
	 GSSlziJgHMCQuEy1SCjqiyZUP3Iv95+8schErsGmXHrJVDBOvP1G6NsQGtRPu1N7Ud
	 CSL9oMPIBGo6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA55C4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166609085336.11207.8221117019291333676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0120a426beb8e49bbf0408cd5e14c3dd5ec3130617fb5c804fc28fd389d0a1d5
Date: Tue, 18 Oct 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666090853
