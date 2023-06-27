Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669677FA
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 01:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B96C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 01:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687828388;
	bh=fmdlxbDghui3AbH4ZvO8fe2ulfsccEHTMUIsVYTSH/s=;
	h=To:Subject:From:Date:From;
	b=A5lzJIhHkvNJKs11e7s8sK5DejpYgTmzzlE4SJzO02vLajxk4vvOemDXkDqYWl7tf
	 1lAMO4kxFp8DCfv1JToJbNgBkzbr6hzFZiuy/hdslEF+fXTaX/uLtj7fzkJW1NVZeY
	 y6Onl3a4UU3lTL3eFdlbAUxv/aTNU8WtknlJhBXNQMy9lAWlWMmtZhoCyWEiUlHZMK
	 q29/r+HmpHY7m3+2gLhHlEqQWajrE1XcbQPrl7qvszIu4WFCAZN3Nzg4/koJgbIcKe
	 scPVkczOm0WMlULXrJoe8BZIvSy9E2HmzUlRlF9wmrtkhpNWmSw5PkIKLUZCSdIYJ9
	 ARC7B9HQjaEFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE674EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 01:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168782838869.15754.2078165623419392892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad568c0359961767068ccb8326958276bccebe21e1fed512da7cb680ed9b604a
Date: Tue, 27 Jun 2023 01:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687828388
