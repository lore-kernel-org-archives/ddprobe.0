Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2622518027
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727128554; cv=none; b=L3XhBoLTs+/VIOFaFqR7MgbsLtYwZ89UAvqlT2llCrPaA0oE8p5/E36GyqHFjlvFwriQ3VXDQlDrGLHVyYPiGJiiyuznwACdScAdY9V+TbKU2RZBiOqXhdRIfXO20e0xbypOOeIJ4mTb/d6XfymIr3a9DmQBtT9/Eda4D5HBvM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727128554; c=relaxed/simple;
	bh=KGrWgDqJe/r8cN74ciCi+4+6bmfqhsas4CQFQFQWFP4=;
	h=To:Subject:From:Message-Id:Date; b=N4T9oFef4/NN+qJTGz8V+dQikJhcrJ7Eu3fHHZ2pX4MAx/HapU+1KwSlBY/PHGUSKpiNv18eTtDCzbhungl1i8QQ/xTsbs5eLpDMqM2wyOLvJS59z4vLZ1UyOTaX2mnf8wrIZ6OpQwFLQ28cDLFVnEDnBwoczqB5R3GdyWENfqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I70z4C+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I70z4C+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E62C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727128553;
	bh=KGrWgDqJe/r8cN74ciCi+4+6bmfqhsas4CQFQFQWFP4=;
	h=To:Subject:From:Date:From;
	b=I70z4C+bfOlyKOIUcpCB5/lNJfKCUUAKOI08W9uOAqXOafTHLoeagylh6t2Edrcbj
	 Qun3g6b8U1lwPJkHeooML2zkk0MRl+PoatCwMFBVDOUt50j+9uy4g+Qk5f4JjBrMVK
	 vAT0KN/TyYg+WfvFaHjKu2Omi9WJTYiEj7I9t74bbAbTd8L3EDnXW8OsrQ1DNgeRtg
	 zpof9/uXQM7xKkwvSL6lYvV71hL6DLtRhy4pvJxSYh8Uqipof6EeeLysNUb3SityFr
	 THf9zd5Jh7kslLo7SuTHse+4yH0Non907Gq89Irn7L6uxdPWUGz6QLmtQbNBm/PtnV
	 QAOVeptN0BYww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F14CF9C71
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172712855359.13972.14490183359326541430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 716d9572c8f753db45e7a854705903560597f36fa67b2943520571ddeafc2bfb
Date: Mon, 23 Sep 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727128553
