Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100C84C95
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGb6XmHG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 760B7C433C8
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701946096;
	bh=nUB/4liRyMZQRUyIXCAJUYF4pmrB0mYvHspyG418ZtY=;
	h=To:Subject:From:Date:From;
	b=AGb6XmHG8IT4fL1oLCkOYX/B7FEX4S1nbcxweBMmUDN/RopijNOn2+MPXmhgs/nOK
	 wSYU7Tr4zqJ6EzbJm0Wobx86P6sAFirppSOlj8dnYpTojtBgxZY2aXzYqD40RJulpq
	 7FEgvL8z23lWOr2BZ4vOePFB00WBkl6A82ETW/SQtBSQhsZecki3/VXnTuDdZhGZCZ
	 y7/9rzkgX0+uhpO+WnqvPtPXqKs13iQRBvvFvHOhfdQAckoAN/J0hG/H/NFz4QqMzW
	 dj5JG9SGLcYyJbgyvd5D0W3jU/0ziavkUGiBxy1XJYKCVMTiP6uCGtADEYCp6WvnHR
	 4t9pO0H4ypxCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DBA5C4167B
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170194609637.20490.13678799843514757722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e0248408e6db2946c33964ab5761283e1bf5638cdcf9375b3749a3d46b7a24
Date: Thu, 07 Dec 2023 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701946096
