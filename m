Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEDA1C27
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 07:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6E0DC433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 07:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675497365;
	bh=LgTxn8h0sYJ2/KrPWQjYeOmMiWVrPHi1K6oIdvQSvaU=;
	h=To:Subject:From:Date:From;
	b=hYtqkQUzbt1Ha2QU3nbJ6RNvh9C4LLeUE3RiL0Ycj7ynkchSH6oxcDgmHsFf9K1F3
	 deH5876W5PIXap83uLEurFfqiWd3Jo69/B1BwXW/HO21EXZ+LHZfdck7FtBjZRMzCR
	 Tqv3gmniMJGoitsaYObySIxDRYS/D6sg8Jj34xg5OV3+IUs/piU0BsKffm3k+9GS6P
	 sSFJGa3VfRYV9S+hu6F73VVE18l4Br7gIhPrgOSvbXU+hM6WW/EODaYNvWFHKudJSx
	 hZOJPH+TCXRErq0tWd7nawHUf+0QhbiIywbdqYd3tR0jxswDXFplbLyGzQjPt4TuzX
	 hCwEJ5yBFrfDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B59C636CD
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 07:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167549736580.18060.3585525824311976562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88ae260f47c644837927910d1e5a69398e2fa015c4bac73874c8b86a868c0a23
Date: Sat, 04 Feb 2023 07:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675497365
