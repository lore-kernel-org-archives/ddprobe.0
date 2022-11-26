Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E45193
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 782D0C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669466454;
	bh=kM1IzpU/Nd8n7JSKVnYOHflCihnumPoR6IS7iLWHhKg=;
	h=To:Subject:From:Date:From;
	b=j07bKR3rzPSicti5iEhuBbXq215R5wqS44h4hmDc/9SKPyrV9C6GlLqJO1cegmJIF
	 epzWTjL363bhTOoVj9zV32OpmhqirYoHCrBzRl+iypuN74oEW2CbwANZN3kIoZHD5c
	 qHW9ZkyLMiZ78XDBPkyBThvmNWpTRWFTH/j99RHqTv7hN87gCWPmieDR7Q0wrKsFwg
	 Eob9a6zY7RuaCZyQPQknGake2wyuLjKoUvm1iih3jbOnNlrWyBm8RdDVF6RZoN7s9K
	 Srak736a25yXymPlZVBWq2EXicSg6K2qA9lUiJ6+nbvWbl0FMmT9WHKsEbV54x6iBv
	 Ap1M8ZelIhCrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A422C43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166946645436.21354.3240520418449529109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32ed6184f996023541025648e771cfff935c64a153528c882a06729894b2521e
Date: Sat, 26 Nov 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669466454
