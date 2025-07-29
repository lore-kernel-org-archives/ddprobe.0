Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E7A78F34
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753778994; cv=none; b=TAcIgAjrbwiuCxBqHtPrsveaRXwdQwMzoXg6SXgdmEEj2Z1Ph5aMkbuyjZKb1rFc8HbzqwIdSob374FZjGcoa7vwW+kg8wcEHZ+S367vWapoBdr7GCdEndEiD9fPl4B3FmpxQHB0Tm+Kw7ViVcs6qXu+2yxF1Wg6EJWfay5/ROQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753778994; c=relaxed/simple;
	bh=L4UIAiEc6Z60bsxCb9ttdkAty4F+OPTgc+M4gJlwrcM=;
	h=To:Subject:From:Message-Id:Date; b=JlVUHZmprZ7X1oLt+9XQmnaNJRC8oRma6EC5n+nZ1k5wJpSrsM7kssw4iHVaeZyFXvjEXZtwYxG62AMSijcQ5QLbeQJpVc5VL7uMdSgWHG5eFp7Wz/boxNux1FW45fz2apPpMiMiEISh02za4fEHsOXe/VCWUuDNa5L5PNVujVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBXmD4o8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBXmD4o8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E374C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753778993;
	bh=L4UIAiEc6Z60bsxCb9ttdkAty4F+OPTgc+M4gJlwrcM=;
	h=To:Subject:From:Date:From;
	b=BBXmD4o899OXvTOwQodmAsnZT6jx5E2ecI53iRXxBBNi3+TsKyAtqyc+P2JyvfYmh
	 5m9AWjXO1Bm9F7fJZCXDB8NeD8zBnuTjFqGWVw4bLXDr2EKPdlFSO9pwRR3p3+od0Y
	 bb5H6uh2OAsUvL6+mLk4yu4s0wVseijuuPATM7cnx37EYvNaoB1WuExv28mhWE6Bpn
	 H2WJPy/Y2di8cf+dHz75apDKh1o1Zy8nPUwQiS12+yAr2qfvYG7ZwYerfQPXwvgLl3
	 rJQt7h2riNF2MyjJ7AVW+Gv5tHd8pvb4QjunmeaITZNQutXXqI0WXuq5WgZ76/c1Wz
	 vgTx5p3MlviSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E96AC83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175377899357.27804.17666784169326250236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aca00d26eb3ecaa38a1baac7bc2ccd12fa59626b6731ed0add912abd3688e199
Date: Tue, 29 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753778993
