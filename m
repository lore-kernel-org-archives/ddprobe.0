Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBCF93FD4
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 19:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78E7BC433B5
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669576854;
	bh=ecW43verM7em1nEFrG9jk2ybTjX7I6Q2qxIWlOF/JEE=;
	h=To:Subject:From:Date:From;
	b=qyYo5fyiDcD0WmP8/Y0xtwi8gIAny50Kfd+tdkIBYYIaMRYKd1l+Q+UCVOnfx0SFC
	 3ky9lD1cJ8YM3WidWZt3rNN3kk2UajhjVlsQtbOKJoPkp9NY5+9PSeG3jO0RX9lRF0
	 zQ28q2cI/AFiLylsvBNzg4LPkKymPhUZma3TH7M+vleetut2TsJ4qBwqcNoCe7m4AS
	 CN/D/HoySJiul6SOkOqK3xCEjCwtXjqWxeoo4PuqtmiE+x/htOF1tcZdXztJxb6Ixg
	 szXsrj0xSYoZPjzK9ox0RIKwXwkL+4+Frg/PsFEP0/V1nXQ9ePaIL/oriQxqkQDgJT
	 FCOGMdsMT6pNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5483BC43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 19:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166957685433.29043.13496675715730466518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ad845975ce617a8eeb696aa7fe7bb78b0ab499a5a606ad28e047b436a1adc91
Date: Sun, 27 Nov 2022 19:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669576854
