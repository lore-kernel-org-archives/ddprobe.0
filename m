Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18725205AB6
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754913594; cv=none; b=HtMNH549qe7H9dxrkRWuAOkdNwBTTr3C6hRxpNm/IKux9UKZ0KlYFoaAUl2mIeAOEdW+8DO5KAuXNSj/KJYwJEeLEG+5g5Ce5Yvh85SZ45WZm+SFZ/5Lf18bwvVqlX8Zf7PPHd0a8HcgCYSx3Cur2uz4OT17oGbxHf6KMTVTHj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754913594; c=relaxed/simple;
	bh=OHvzfSN7GtGmJqLYE1xZb8ZbcpV0ZKCirrepa6KBkh0=;
	h=To:Subject:From:Message-Id:Date; b=tiMUKckgrx0H+EuUkHZ5uKUAkk9Sj9KCuj1J+HG1+B1uXnqyXNllMo3tAsehsaG55hlrnP+nVTxiq2XrOzXKXJYvKJk5bSNX7O1Hi05+rOplGz2Qrb+Vvi8JbnV3c3ntJ+3wPvqfUqHohPoEY55ptzlFmTzy480nxsnvobkjQgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbFvWsKP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbFvWsKP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0000C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754913593;
	bh=OHvzfSN7GtGmJqLYE1xZb8ZbcpV0ZKCirrepa6KBkh0=;
	h=To:Subject:From:Date:From;
	b=rbFvWsKPcRchN5eeFhjJ17QYkOVNfT2Izmh4PBa9a8ihMCECfIWBKh6obGq95Kqhd
	 uOXfdb5v6d8HbVx1tpdEzrEkQMn+Y7nVSFxtS8evWHDy5mEOiU+y0fkWZlv6RjNpjs
	 nW0NswjLq35L8EJcczUlBy0EPqWJZc6auNWg2wBHcREEqk5LV6K7ZoYQRdcmQmoFDm
	 u5i0i02AADNhE6xxXVfl/ULAZx9afbAxLALgjE60df6ps+DK/KClktkJPrghmpINte
	 9beDm+nnW/3NlbkQBf2JJ1xUcztEJYTBiFE1R4UzU4A6rAUYguI3HT/yvqOHJMWafJ
	 dmPDz3NVJOiqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E25FC87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175491359357.22314.12534906946167340745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db6077246cff4b41f4217c707dd7275c7dad50799c135b3c3da5e79fa647a439
Date: Mon, 11 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754913593
