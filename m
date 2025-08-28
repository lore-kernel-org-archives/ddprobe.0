Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2760623D7EC
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756421994; cv=none; b=O6Ypd74XT7uw2AZP9LhkwTXgXbrk0OZj8hE9pa/zd9VOzndxaxbIF2bpF8kO6UnY0Lns94LSEeWwfQy359qwz7lKb+XoT1xRkC3TrEsk7X4OiaTn0oRYTzJioLTKZ7EVLwZmXLzi2dnqM+q+Ngi9A4FQDegbedy6oWHieMRlxxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756421994; c=relaxed/simple;
	bh=UKpT9+KTqx1zh5YVeM1jDp5GFl6Yob4GEYUI0ABcGOQ=;
	h=To:Subject:From:Message-Id:Date; b=hM6tDqW8zrbKgrD0vuvuhnNXBPXh0ZHJCPebUHniE2jrqGmi9ndJtu+f4c3MViiEUvxwVgSS/bsK4fs5fOIb8v+f70NF5rnwzw3Wi+MCA09LDf4a6ciqv+VB9jnUWw+5K7SnGXq+esMyBqbjwPlaLGWhLYOFBIhjWkDn0oYeMqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8OCxPxp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8OCxPxp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F59BC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756421993;
	bh=UKpT9+KTqx1zh5YVeM1jDp5GFl6Yob4GEYUI0ABcGOQ=;
	h=To:Subject:From:Date:From;
	b=l8OCxPxpULe/PxRkTCO4bJduPxAK99g5IesHZUTWTrlckKMEHotS8PYVHK8s37qwi
	 QZw699XLKBaGQ2x8ivVzI95nliLAwR7Ayq0Fv2ODQ42wb7vTh4YZsn9DYA10y8LSQZ
	 iJkH5ZraLTpbl9gAOKQWuAbpBb82qcrgQ8z54d2QmkWNXYG8gkAdRug/KLO5pAk8kK
	 7w9Jy5P9mU1+Zs0xcbaLlROJ+h5UHI9yJGWBYMeJgmn0fjERR5RDQw9xiAYQWwuwIq
	 XbFWIemBxNtMUD4Rs6TUaUvfcMW7YAhyNxjctzREuozTkHxTqxNBdlGLC1fitgs+/q
	 2I4dQjeuS3pJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E2CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175642199358.8231.7767561926232056042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d571c5806ef0aa36cbc705324525d826378ea37befec266b459f764b2a743d1
Date: Thu, 28 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756421993
