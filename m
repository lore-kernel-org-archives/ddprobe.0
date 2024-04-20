Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 793E62572
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 20:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713644423; cv=none; b=lrHC6ADGbGfFSGpt8Tp+59XtRxq9G7pZtMycM+VBr/3KUWfazpTJz43MOI7X1xGGfStbme9665Jav7GMsii21PDa247o+7ymikw/RmGwb/J5r5Cgnn0LPwO7Ka+QVUgCuYgw6daXwo8ZCZrxWeGK0M+oy0Z3lYhISSxg+/Wbb/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713644423; c=relaxed/simple;
	bh=jVtK5hA0pzaadSP/zVvNElHF9RrKDrTDPeGnaCTp+Qc=;
	h=To:Subject:From:Message-Id:Date; b=nx135Hd42HYJLhXwXAvEAutHOAgGnSICxHGESknUBKVU3iVVrdqlPtdeHaUadySCoGfsKLfkpMIHYviLhWE7WX81LvaY5ClUovCg8q48q81ibD716E2OZdv6ovAARPcI/IDM7J3jTIZZbDZrDgR7Jxo2QEgZVcKktNOjM5XKPmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSe3W2g0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSe3W2g0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0B4C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 20:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713644422;
	bh=jVtK5hA0pzaadSP/zVvNElHF9RrKDrTDPeGnaCTp+Qc=;
	h=To:Subject:From:Date:From;
	b=nSe3W2g0mD2XJLo5VxTWerqHblqR9mnyiGVqJYj3mU4NgK8lKZwGhp8v4qHl9BTjC
	 DQiis+95tmuBZeQyDUb0MQZMTEnL60kXwDlWVra9WXTtA1Lgwe8QyX0mHddcdhqhAa
	 C6NGgt98Pjmy+Y5J4RKk06C/S6CiWXjjjTKxSw4I3tXTuPgkepuRHSrEGxlZQHIN9Q
	 WeSOH4w1SNgXZW9BgAxhi9maWGXr+pmMTmcz5JH2F/pdyDncKjXNeUHiYV9Uz1QeQ5
	 iQO9vhsny++pLXtX2q68TAAhYeghXj3p7AI15zxzdIM+d49oaCwdxhZXHLZYUvhK/j
	 eEjB84LRwB1Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F42C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 20:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171364442277.5338.12414206101276335988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db165ffdb916e3688bf3b8792f6492262bf14cc0cd897d15196a05587d5072d
Date: Sat, 20 Apr 2024 20:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713644422
