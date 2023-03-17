Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4545779D6
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 22:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED5D4C433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 22:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679091126;
	bh=HuD+Q0HH97SFwQk2OPmV3gXDYF02Er+fwJy7HlTNPGc=;
	h=To:Subject:From:Date:From;
	b=DQKqb+gQQTYkYExb+WmxZ5SfWZwsjQRGvqXCg5IbOrbPleNDB+wYhh9B1TBxN6JYG
	 ZLlLYQYVFs1OyaHCQ+XHJVtzM8KZqA019Yuzv3oY0rV+NzWl9Ml65ZYWVzqi716tnd
	 NqPjJci1+5i7sf9n3LSNvWNtGNI7pmeWxlCqJryTLfYcoqF4L9rDI9x0co5iIIbiVW
	 PbX5DcafW0PXR9PFEHMubFhgkxVz8TvDHNfF8OV+4SqPWBd80Minqsd5iTaEoXsixX
	 fgTZqCopUN9Sjvi2HG8yX+pBajOc6az4+PHslLmMLFUTJEzuPk4db8umn38eMntnfr
	 4OPhWPwabtIoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB39CC74A5B
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 22:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167909112581.32197.15821683456846937196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77bcef59fe87ee30f2fc76f3874c8ae49496c1378510000bf3a4440171de65a1
Date: Fri, 17 Mar 2023 22:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679091125
