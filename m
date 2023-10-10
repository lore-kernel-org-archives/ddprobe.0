Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640C2171DE
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 11:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CR887cLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F26C433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 11:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696937828;
	bh=j7TM3LH5BKLq5X/p0JT5/1hXuExKEPXZ/RNAJEf4dyU=;
	h=To:Subject:From:Date:From;
	b=CR887cLve4v9hp7YUSPU5p9l1q43agrc1h07TU21iTBXPS/Jt7qMtQozNN+kF+E30
	 OpCiwzx8QFDrnLgRsnc7+ebFhP6NX01Gjsl43kRMzEdo9WS0A+EWCaN7hUDey2Ukwd
	 cxq/EKIF4d42e0oIHa1Ojpp0jG+IKOJnnBnECjcmWF+2ijRd+D427ouBI++0XBuG/L
	 H4DXYk/uvWR9Zv4BgFS7LYhSS/0oWRz5YAB7Q9XtcQ/biGL6xSn03vUx2rccdg1xeR
	 OB2OZMKCNOMMRLcvXqqb4k+GZrqrL+sVCMbapXUlEE4sGuWhVHIYLOr3EjjQqBQjTD
	 0dO3KI1e/PqjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC72ACD80B5
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 11:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169693782876.19477.12476622835321532393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e88be897753beddcfe77619bd0d9ccf538788192e9f79f7cd8f09f7ed4bf4c97
Date: Tue, 10 Oct 2023 11:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696937828
