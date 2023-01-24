Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D268F4B
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 20:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5403C4339E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 20:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674590585;
	bh=yL86lY3zm/eiBxNImSepe6xDwfQVGNyklL06WGogYq0=;
	h=To:Subject:From:Date:From;
	b=qCEzqfVuZ5A6NYRIxqVtKJop3GHnHYhgQVCzv78BZ5Wm247hbODJmmZL47mbmT1lP
	 0/65YufA5T1JmpUXQmoM7VrTCf0Q5qUrezqvkOECFdrROLEHQDlec7XzHQVOTAqglf
	 M6CAJj4G45bTwq0LHasxXjYb4qSV8ZwO6Kp1WiO+0CJETSGf4Ddp7NK4OdM1KZOlB9
	 cpzVFgtCru4dxQwTqJ3G+qEcHuHnjhPwwkd8LIiR+FmFefG9LgKFoEz27EoZ0M+OL8
	 dCHQ7jGiap5BenOWL2WdY3TIjSoZT4kcmZPZmEoUIfC9dTMwcE9C1JqNH2Dsjljn9E
	 kqZLmick0haew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7954C25B50
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 20:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167459058580.20603.2123202241223351817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e7eb62f6f09a315500cae31143edb950496c235bdc6934e9d3cf826d63d8bac
Date: Tue, 24 Jan 2023 20:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674590585
