Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DAF186C
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 08:26:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C63C433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 08:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688459168;
	bh=/HPog6y/TjAr6str4xrcLl1S6CAru8O/9a5zJbQkC9s=;
	h=To:Subject:From:Date:From;
	b=BIFIybEHzWuDWq3U/nzT3Craxyu7gBn2LLu9ZqNqIXCZ03wL7ikacDAX2qE9fSbPt
	 KYKHO1clWBmyzSDx7ZnEOKY782qTCJNVxnLbsdqs+C6z6l5abOwu3lqh9APADM10U8
	 8vroXPHJ99H7bWwRJUlYYpxa8cMsiq3AnHkxBBriIzZiHYm6E3H+qlR09EStiMp/Tn
	 En4CJdSVCXv0ASalnmPsr9ztLHTBFi1aXBdZ4ZNNiFlDlzhHYyCu7CxPNZaRjMKWvI
	 nY0CxocIleoQn3u+z/wUIx+kqxbz+MgAeNYpgU0KuYitPTMwwdjSiVZyNB5uw+pjt0
	 IW12afwHSa0mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99F8EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 08:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168845916868.3635.16605419309173049100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2817cf0de2ee9e8355946497f5a61567f617d6a1f11df2bb779b18f472ec6f1d
Date: Tue, 04 Jul 2023 08:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688459168
