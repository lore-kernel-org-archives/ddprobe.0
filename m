Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F6636B
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C0E0C433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665832253;
	bh=jGQ2Ykcf8ic+JK9EnBAsNv3F/+6mJVlh9k0L6zB11GI=;
	h=To:Subject:From:Date:From;
	b=DRcbDWD6Y4Yhm1KJ6S15585qqOMGoKxvxXrFnlB4dpvgR7+Aybu/VNG+BfM0K0GuJ
	 gG3WHA+sj6A6JuLFKjjSGsyqYsjRvf6axsC8P0KIJMcppQtSyJpw3CMj0HKC74z7K0
	 CuyqQfVlYXQrzXgvJ85z9T5E1pdHPrbTnXZkmMdRDWJST4u3Jl0zc+ZOf5D8xy/Sap
	 bQ5voqBfubzhVEQXiSYGfcWzwq+DRCLhlWn92jfbOAu35OmV8sw5rn8Fmtzl5CI17o
	 L9Yjg7zHKvJGEcqUicP8QC0iD096hYSrM0oBRcdpdlMN6v7z+guUCacbhAGXl0yMBs
	 NfQg3PO8Yko8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51472C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166583225332.21537.13842810124043220947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe873d6aaf3502b83f50dda73f2cf6fe02d8f96013d863067f1f29f089ea691
Date: Sat, 15 Oct 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665832253
