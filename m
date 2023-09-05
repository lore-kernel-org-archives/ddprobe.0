Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540F4DDC5
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 19:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF6E7C4AF7D
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 19:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693943648;
	bh=cFQbD4rAMJpqBOeurOs9mSElvtjhjyZ5U1coWvAU4+Q=;
	h=To:Subject:From:Date:From;
	b=OrYsNGp4/AgyCBfvBE3ZPv5FwTtc+89xTF6uk5ixqIZOJOSSPWW5Thvw4eoeVbFu+
	 YokrRLv3BBYuN07RS8JYxMlt9B80XWNKxGzMLv85Lyce2mYjf75ZxvwbktTfgiEQVw
	 sGtNVrxMlgWnE7lYPwsNReedJCjwKoHpQ9zmVqA4CDHlwnwTbFjhUAF2rHKErNjpvb
	 aT718SvR0QmKDApsqlLvInPBfbpIYo1TE8Iv8KU8DqRN+j81rvRpyjR6850BaRk5Ci
	 sngfjTJksnErX4wq5R0Yoy+AodInCwoFb0bPnf5XjyMR1su8Qh4huD3TaxAtsl4auZ
	 Whl1tLWUzYUMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6B08C83F3E
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 19:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169394364867.22212.2262858748358153436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fba83c2606b27d5c59c44c26c67906cf89297ae9396e1ac6cb83b8f94c6e5cc4
Date: Tue, 05 Sep 2023 19:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693943648
