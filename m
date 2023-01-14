Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D266C62A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C9BEC433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673662287;
	bh=YA6TUjweE3Sberef8n8VdpV04yIakn2EBbI4cDDKyCQ=;
	h=To:Subject:From:Date:From;
	b=pKrfJHzsxdixytdMGYXz9g4d1JhBynWF3ynacIokNxjMu5ApHF7ixtVdfcEopZqsE
	 DZPBoKBmWP0XuWSWgsySLrWhy5d+PACIJJG+hGJCXy9GATIQ7KRDIA+TqWQ+OIypii
	 lelwy6frT3K+AllDURjqEwBtgEK+MKEovwQBZKsSqA0xv6GFbJ3wUJKfG6rHReTNPx
	 8BDXNj5DxPLfHQzqLsuHzewvy0PHT7l5gRIwoIBilMB+K9upYB838TIJICqVusyEdD
	 2otRJMGi9b2aMuSy0zkmKQaXGDSScUyT7brXcC0SsCW8JyIh5vE8oCGoaSJmT7odrS
	 RGrFTHpH3VL6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E354C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167366228737.11092.9857282574966231347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4270d75750a4a3cdec613b3a4075eea08630ea85117d0258c1a8899ea61d37
Date: Sat, 14 Jan 2023 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673662287
