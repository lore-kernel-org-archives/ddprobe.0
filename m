Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA7F38BF62
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 09:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782294454; cv=none; b=ScX8tKViXvWTqvPt/DUjFW0pjWlJPpSbBlE21Cf4ANSy9EN4nAeK4yDmbtZNheqKIZ9xhim5M+dfRngM+BROonnTrPmITHHKc1bQVUL60aopnwYhqYG/TM0uF8TYHP1k6dm826TxEmyOVUnFD53znaJrf4iZg4dzl7QkL6XdoiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782294454; c=relaxed/simple;
	bh=66FbpymqLz3F0C1d3VwYaFnMRoULITPtleVDt+zG9/E=;
	h=To:Subject:From:Message-Id:Date; b=nZFR2cVYyvHSqQ3wnfA5KUP7KsrFZeiKRZ2ZJfsdzTOdOZGFM7tbIS/x0rJJLbfrhfj2qh7UoLemjpXxAEDkM8vBIbak9QMqQPV6qS7IcJo7h/g+FOUZcUVz8idwfcHvQ7tQkRGTGhT6qz1qg+0lKGLjrnuR0CpMDWcgL6Iqq2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CC656vL5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CC656vL5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D280FC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782294453;
	bh=66FbpymqLz3F0C1d3VwYaFnMRoULITPtleVDt+zG9/E=;
	h=To:Subject:From:Date:From;
	b=CC656vL5D2V7g34H5iP9c+3S9qx+BXt7zSlcwYd/F6GKBI43VlhFYDeD7jHti1QNY
	 SsjeHDSjvq+Gp6Cm1sxnYrJXpxuGvZpZ0rvZQTurdbvHm0+6RlUWSHIQ7BeIpx2iLw
	 758UgeF0c6GNSiMFq16+9qtFjVt8rvfZQja+6C2WW7KqCCetMPVT5ZaHAFXstQ7MZp
	 +EMxgs3tSwdSy1nFj3IZCn7JRjC3PpL+FQklDIWOiNsk/C1RtPPZESqtNU3E/mFASZ
	 jkyBnAKy7hsd0kLiQFugiLoldyiIAZHWlFXDY5QUSsdd1eZacy6Z13D7Ly5lY5BjG0
	 hBnrv9M4g9jVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15B9CDB47C
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178229445371.13522.7777808456350914568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 754045135c7067faaca53bf50054657d0228343b49b246400862b725f83f950b
Date: Wed, 24 Jun 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782294453
