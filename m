Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9E733DA
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CDE0C433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665498053;
	bh=DOnoqF2xm5dyrV6O49FdJio7k8kX+qQUNQWhxf6bBos=;
	h=To:Subject:From:Date:From;
	b=fVWpdpyyHjRMW6KXy3tDzsS3zeMJPLrEZlQpB5pGnIVjVWeS6gr1JKN8PyJAbqOkr
	 knSRQGJBCuDj1pDiS6wF6ziEmLYAnA+dx9OmJ9D8RhL0IShJLl/A1r7NpJ0nkUutLQ
	 t6uzHDJYt10gD1WLCjO8RlxkS6CxCxOqoNk4HaSeyUQEhmlUNDORpJbXv+GkPi/QoV
	 ubMk/RNkGAljKgN2WXvG2tGQmIkicczDRkbiSlKOppvbamoqC9eEOXwcFYaAcwHLsS
	 xrKe8ve8QtKYIoGvrwBHdYp7LxlvdtHMH99MX0uNXqqKv2Y6Vq1D0WT2vwv6UpJhN/
	 uKYHY9EU94T2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5249FC433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166549805332.21827.3964778563037984346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b389d817bd3e15e3d881d7ebe0cb2311be19f4fb8539cb0d2ce6e0cbc420d0
Date: Tue, 11 Oct 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665498053
