Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6F277F4
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kms02WBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B79C433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702775296;
	bh=1S4/idkmCAGw37A9UXaif/XfkCyqIS0zEVfTdzbaeyc=;
	h=To:Subject:From:Date:From;
	b=kms02WBa0MhzPj+8XXM1/k4HfY4AJNVcpa7Iq8ctB16bEF6tVx9TqdDlHROuP+KgQ
	 WnYGYoykHRAn8YEvZK4EEWRnAhA5vdZugOwEj4O5DjkWUDUBpvXIHMhkrkYkQ6VVLZ
	 gVIsuqxlYhe5DDiny0jpfRckw42rk5s8Yz9giwcqrK5A2Hkz+aIQN6VaEhjEF9Y4Ui
	 e+X5bd3xknJ43SDNsKn/3OgFcSqDbAG0dhCGlW4MUZVUL6/lwKfONtMeqAat2W+TT3
	 16u9cG48TpMjMpvv+ABwZA6v0QRfeQS9w3psVBETvtFaV/XpUw2wAXyja9VMEhcTNp
	 UhJa/RKalXDIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B626C41535
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170277529636.18174.5932795367879861135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94f1c6d50c7893a552d38a80909cfe449b2c653bb2d9b102d318578f1a86e421
Date: Sun, 17 Dec 2023 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702775296
