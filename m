Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE74F258CF2
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759828793; cv=none; b=DdI0sm2klsSVnZiOXF+eMbUbH1GHVdGBhHVihSaXUL+nY0RNC296U28P6P9kiMOCq5Fyj5eP6YDHVwbdZYBjjnxDAWWMkxamGINaRy14WdDn7vK1IFlU0nLIQVdGH6a1JuoGanNrBcDr4axIews2onC+Xvf+M+JzNHfpLo3N4wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759828793; c=relaxed/simple;
	bh=J3giq9bWb3ZbHbrpC3hwU3VWcOuQuTIX/6ZE1E1lJhY=;
	h=To:Subject:From:Message-Id:Date; b=qMRrl00Yl14fPVVIM1SHkueTpYf5ZuOWcTOra9gO8cu1QDD7KDzKTjLQliUOO3OkcA2ol6HOuvyP45V1vfMslJSXmrHDRcFH7r7ZZmCgwdgLjMG5i8BHbDnf02kTUDJjYNHXxdJTW9qAfZY2dapFSr45o42V6tq/tqsAdI63wUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXXwglKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXXwglKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FF4C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759828793;
	bh=J3giq9bWb3ZbHbrpC3hwU3VWcOuQuTIX/6ZE1E1lJhY=;
	h=To:Subject:From:Date:From;
	b=YXXwglKMvvTAm2cp25jcPL5c9rbqhfjbWDBKV6JWjeFpN/cT7TvRof9S/zKnr78C4
	 SQ/ckb+Akd5oiId+YnYyEzw61G55USIuwY6Fw0QUzt9cIFcyd0HxyPFaqlpaejjXyI
	 4jDdLyH+FCdrF5TBghaxT/GPwFC1/MNWGSxZhXKnBxEGcmTEcZyuLBd6aeMfRoS/Hg
	 ct3thR6ye8D4oTzl+SIrCxw+NBmOURsGEKhT6gJNyhR0ddGmncqT7KFIwtNACDj09O
	 X/9L/ITh1dWW+8kS59jBM2iGYOZyQxUQ9hhRgrUjkIvIh9HU72qFA5DBA4Ktowzaz8
	 3AW4JIK42BkBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90899CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175982879358.26832.16123695033922991497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61795ef7d0433fdcf278e49fe9e85e9d9421fcbab63759e6cd97e00c96aaae09
Date: Tue, 07 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759828793
