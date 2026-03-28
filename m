Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1A4330324
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774727694; cv=none; b=X/AqDEZqoLG5XsYnNHl52eRZb9PMK49uhcrAvUs8nJPa/1+hUD8i3iyMywf72jZQDIkNiy7XAXzgOaOUow2SuuAmLbKe8tjBTqXpXbhOaPDF0zt9f6Hzpq7O1WZw7e5n5mSXNtnZTEB9CskfFEuZNakSpmnqdGt918JdVMZouVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774727694; c=relaxed/simple;
	bh=zkjqLsLQ4AHyniykMS6j317ACeSIAOdDkKvbcEVY+A0=;
	h=To:Subject:From:Message-Id:Date; b=Tgihmd6stgG4fVwlF5JYnjY3lEZLj94JmSg1AVm+S7B7/Emocy7/pPTs99SzrcEDu799jJQCsG6u9iJuvuj8Z1gw0NPipbUgAjLPc1vuegr3/0mQ/FhG/QvSbLqUJT/dzce7liWCEUaf+uIVkI2e3Pip20ICvXphi6G+BfL0Of8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUGkfX0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUGkfX0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10A1C2BC9E
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774727693;
	bh=zkjqLsLQ4AHyniykMS6j317ACeSIAOdDkKvbcEVY+A0=;
	h=To:Subject:From:Date:From;
	b=JUGkfX0jq/bxRb6kax/TbIEkxJZwo7nVQYmCWrXoAWP3H349cGi3Syiwa71wj1GzF
	 20vYZFegZZUCZy1JZfM1q4TaD2IFgHbSwPBkutbKDsmuDf4IJABxo4Pk7U8I+eeNVT
	 nr7CR5xxMbsG5D3K7Fgfl0N2N/rlQxrwrMB2L7DjIXaTIGw/fX2DBdz4m2b7FoLPbC
	 GJ0JC0W6iEe6aJlpeXXQbJvXyCS7w5bunnUALmYrc8Y2zNnz8eRmd7v1yHGv2/s3Ps
	 T57+/GsmqylgsMUyt2/E9Yee3Tc/cfr/0/vbTz/OwcZ5IYl6X3sGMB6OwinoHzlBwb
	 TurVvZxiyP0iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918BA10F3DFA
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177472769358.15904.10068093350427039801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3df254c8cd0a4d92b55007e1c9d8d3862b57518f580aa6434691cc608d64a7c
Date: Sat, 28 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774727693
