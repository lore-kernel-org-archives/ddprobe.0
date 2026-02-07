Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3DE19C566
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770468834; cv=none; b=bCWSUiwDZO8cMcLn8BKUXqv16mEbZgM91LrY0RSU6FtA/ZYVSv4/fQnw5e8FOdO8kz7RgdmgeFSndNz3hAMSRXtLVkgm6fydtgZ8X2ChmQoZjqWyFAXxE/X8Z7G+ZaO3uR57S++o2ruIZVQOt1h76njHGm4nSK4Des54EJDH4io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770468834; c=relaxed/simple;
	bh=k29+UYxsjDSn83o8cJUbK4LeF5XDW8X0ILi4/VBpzyc=;
	h=To:Subject:From:Message-Id:Date; b=ugkG1ia+QhRivuvwpRzIy9uc6XJ2Eyr/WE5CTf/b1KfEkIHDCqBuXKyNvZQDLazHnRHT5/mFW0NNcPLtAKLA5HES2hyHWcE4uZHwFjgJ7OffQAe1WzAri9xzJI7BE8cIWCu7Md8zjKCJog6K8X9yqFDj6zCfnsybPJYXqkHKxhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvRWkDgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvRWkDgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2300C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770468833;
	bh=k29+UYxsjDSn83o8cJUbK4LeF5XDW8X0ILi4/VBpzyc=;
	h=To:Subject:From:Date:From;
	b=QvRWkDgmg0pz0V5X6zZ52g1ouMGFmH5zzzaeeLTXT/rp9ZqXkCWvmoLosyM4Lz1Nu
	 hjh6gQ1Scmo49EeEhFJfQ9U6xmOM2Ocv4yRON/BxQXet2Ybfa3iSueVZoxbA+cYf9O
	 yccigZFC9M4TYmzXgxCrLCsOjYXPD711TMgD/xoMXn4RgYyjMskEEMIlkFJXRcC9i6
	 q2cTgelxoXr9zrRL9aiLPX+1HbyBA3qjWX9FSXCx10F7SQbux8htEL8I4tDq3VQOjV
	 9jhFMbyaAuHwsFBnnuyBCDISSAeQMP60iHa/gv0+lU4i7IsSm+6o2SL0n+D+7eBTyw
	 To9iBNPTwNY8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1691EE0ADC
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177046883362.22247.5809654868632543391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1497611efefacb8d4344e27e0a06509c6d397925181f6e76775814f16a632fb
Date: Sat, 07 Feb 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770468833
