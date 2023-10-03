Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DB83E462
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 22:06:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C321CC433B8
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 22:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696370768;
	bh=ZDTWU3hD18l0GNlCNnRjTA02WxvRML2QX++paA7/F/c=;
	h=To:Subject:From:Date:From;
	b=Ehvkapmx03OuWvEWVEnVyz+80Ja9eNAdELUnDXeYuWr5EoQc0iotFWKDdSYxl5cr+
	 kIiRCCw5wvhD3ibsF9Me4w+89MqiX4EA04UzZoJESVjwTskTU3eg0+9nDpY6gNg8ZH
	 qRjr/4IPREgnd+YXIKEvc0Ffv6HqHgZNy9SpQWqHFAfhjW2zm8XL+bc06+WWL6DP9v
	 pExWnBDSvlinw3ajIhKSJ+9MX+tT/F7qp8moBiz0dDnxoae7VN34rVuL3FJ1HDOlnY
	 tsUck6gXi6OyTaMSLgybDgOyyh0Zh6p2XWa9NkfVBYDYt1DYU0If4rWf+A0ASfUXZu
	 3C3QqdCeyNgcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A824FE8FDBC
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 22:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169637076868.3546.16257979067825953200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d5a547280cf7deb8f8f8f2fdbf6ce4e12fc67277f3ff280990b32c911fd3f9
Date: Tue, 03 Oct 2023 22:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696370768
