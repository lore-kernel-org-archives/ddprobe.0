Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BAF6C94A
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 22:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 178F2C433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 22:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681856046;
	bh=mOEWPI5TZ5f8xqEXBkey2mMR0ZrVnLLGT1sgRLdChAs=;
	h=To:Subject:From:Date:From;
	b=HngzwNEclJRQCzp2VZQzsjQZSU17Zis2ctOTCKxS4Sx1KIPL+/98b7QrfzysJyX1V
	 77/KCJ6LUFvN034bJlgZnYFcSJYAqq0PCu3RqZiCmaA/ffKZVN0ZKGKHrmdzgzRTca
	 RkWuOgKkm59/7xgE+F73DuLksiXWQG9/j0GHw5kxXdd4EM8Gw852s+vN5GqsfjQ/UK
	 n0nTZiFszBooxBPVpF8Zw9UgzMzxA2Eo++SQ458bFHgW0WrotuRRYJP+93hoy0D9L3
	 bMh89UBqTFgBWsbCdyqkT5/WOmswRZUM3gFt5ULKN0PciJUwvKXS96yfmIBX8BPU5z
	 LL1kKTXEJ8Swg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC526C77B75
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 22:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168185604586.3054.4939545482732079054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41f955d7f5d6b5fb362290e18b349ccedcf9fa0dfac7cb0425775e14e7013406
Date: Tue, 18 Apr 2023 22:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681856045
