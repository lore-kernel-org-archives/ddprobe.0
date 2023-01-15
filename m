Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2BB7B
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92721C433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673820087;
	bh=CI+Lf9r+IBe73kEPUTqQ86M7fudNWKNvze5FE6hLGrU=;
	h=To:Subject:From:Date:From;
	b=pm1uJ9iljexTc7NzgSKWshc5Y1JK8s//Guqmow3oRb8KHBWatvDUlF+4pnYZWLUj3
	 bfi81wrEYrrR8EDTSlG/Q4VhASzgygOvFB2Vlgv5Tyyrv5gTuMAq+rmfWpV5NfSyOj
	 ODvtwUULscBnTX9bdQajjK5hFqU0XLk30e+Gg1UGH2JuDHdTYfNucXwQif1mq26HBI
	 v/G1b8crKwEwTuvwezxaX3gsFbCZnznFCDkrq8y0aZuLtZvzYFzP7eZfWqKK+83YnK
	 sKbS0FNtb/zsZ87NWlZBxIBgN/IiZlsHSjjCdow6WOnUpzWyrl+1b/pLJrVSvtCAb6
	 6DwOX1K/TdP4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70D06C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167382008744.2197.16870405974165582940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a4b6b9c8418bb315607dc2f049fb58b4a84fbcbbdb61cfdfc6768df6607ed5d
Date: Sun, 15 Jan 2023 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673820087
