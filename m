Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5F313AE6
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 22:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9524C433C8
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 22:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691446388;
	bh=H9leWRgcSZw8ObwBnpI0SiN5v+74D98EEQsAlojWeXw=;
	h=To:Subject:From:Date:From;
	b=esCP1qbMfIAUQ6VPVqzFKoW4I3JFmj5xRiw5hBZe90FT9nTNBUBQDm8UAiQ9HmAz0
	 WabGGM+SqTfLWKVua88K7N/suFFQsKflI029Odbqx8NJMYnQRP+o/oV6Zl+6mKiLb+
	 qaaMJ2iVa+DVLtu5FeVEGl7g7UahD+Pqtgb1kRxfT2UZZ1lgeWTZeA/8o733ekLZGX
	 u8EZKy96zrrwCGQP7p37LInVaPJByqwiQFj0GgBPNUtMisR9X6NVzNoJg1VJ84He3k
	 Cvy8EaKwMpqAl2Ac5kpDkU8vJy0ZW6eeSzEAUgrNkd0V89r+sjhhMDubc10S3xOSyq
	 zecZDpVXpGeMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8B2C001DE
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 22:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169144638868.15311.14690347229381035261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c416b56c3579f9e5750357184144df11ffcda3e720ff31abecfa8f90c8bd4f0e
Date: Mon, 07 Aug 2023 22:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691446388
