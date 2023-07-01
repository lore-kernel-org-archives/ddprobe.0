Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0FD0257B
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 18:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 149B7C433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 18:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688236449;
	bh=fa0gy+6kWwMjj6zUzC87XJn81KBndqjHDLqzEIJanOc=;
	h=To:Subject:From:Date:From;
	b=meqg/pSRK6eyk2LJgJKL7ZZgUIJgZ6NwmsdZCYahNAPs0Z/ND9xZyQA6fBOO9xeV2
	 nwag4vX6x7fqKMYYHScQmiKJ7fbtW/YzkqJgbDx/4mhhxQqlHHYelpjeMNcH3Zm5Z8
	 CAX/27QJNIbE0qvPEbH3CeaW21dcWbBw2Er/gyhrJ1nOwkMAjGjMd6sKV2Z89GAzGV
	 rGt0haKuQEmWJqueqokmffAEeB7Rko4aCl/45MhEH70i6XdQmgFmsIBwxb3hMzcXIo
	 Sk/95zAEAvNmZ4ShPs7HKAi8MEGGpb7eUnta0bOfC8h4mkKf1Le7ZSKDsGhOxVAqzv
	 dkFm1U7nKo1JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5C26EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 18:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168823644888.27513.4397100213405956587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ad910de4272dde6cc713cc8f4736454c4db70a7753bb1d16da4f6595d37a820
Date: Sat, 01 Jul 2023 18:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688236448
