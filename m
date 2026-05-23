Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80AF4223DE9
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 03:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779505954; cv=none; b=aT4gw8ZkOIs1ArwceBq0vv4SyNEXN1M8D+uBAwxMPCFmMtEKl+PZqruvaCKg5CWpVCL1Di4bvrA4k3Noa+fpgZXNgmCFSIdBJq2ni5F+81gkf8DJFwF5EinajhTuY7Zng/874GtbI0okMC/xQqdXY2l+cJMiCG7nQDdmbav9Y7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779505954; c=relaxed/simple;
	bh=Xy0vsguXgJ23kp8TkdLvQ+YnY2bcV6y1fOwAZVnrNoE=;
	h=To:Subject:From:Message-Id:Date; b=VV99/iyjd7MBl33F0onTqsUo6vVLu3yiq3Yw+Mej68kRCr5eXn/80qIJ57BQasZ8ChQAoeDMhl3KcA0f4twfTPw96LBQAGw3xcwAYdvzYRnqgwmdSL5qcaxN7Q8wVDBAKFh5UWu9ZSft14Y3+POTEfa5jZW/kJ9yLvud9ZFH66E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajKQ9t6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajKQ9t6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF616C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 03:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779505953;
	bh=Xy0vsguXgJ23kp8TkdLvQ+YnY2bcV6y1fOwAZVnrNoE=;
	h=To:Subject:From:Date:From;
	b=ajKQ9t6POPKKWi4xzAiLc/8iALRoEjFVkMlZ+nQwaFMJlzkmvFQLA9dDVQMV++6Q3
	 J3Xfx3+3FnGSIdtJRaxrqFmOsIwF4OFLPgBHhYg2oBhMkRZU++T+/sxFsjQYHlXFIY
	 WEAZHrjDoi+cngumaf9amidC2GEImXuUNWnzjN27TfhHDiIGFcXxYoic1A9pUq/yvF
	 7pK0g1ZfO/GaEFFxBz/lTrV9tEwunNlxcq2V76h9CNthbjr5pKHxxn7ovhH4Oa/+qk
	 3jLyHpebgCTv9dUvnhGqYn32zqPvFNLj8QaXAf4wIHIza8tF7EEq76JJ7Psl0Mg5MT
	 pL2U8wXn7RJbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92C8CD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 03:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177950595368.26245.408611883015223589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 644fe8a27bfdadd0d4030f62d3962c5dc2d18a9130635079c529452fd81f192a
Date: Sat, 23 May 2026 03:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779505953
