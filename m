Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E9C3568F8
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756302594; cv=none; b=VlfT+wAqOVZUZl2R6olyukFYNUTmJLaRia6JqceVntLNJczy6628EZJ8MwHfn0lx5TBxeVwFr1+qPGn6tZXqQ2hPMAzOvAbhlsva5JjTHEAHxNygO7ddaSqEGBBkQBuLFc9uM+qjiGej4g1SVhezBdy5kw7M2hx9aJj2UioUImg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756302594; c=relaxed/simple;
	bh=c90E7fz2D6fPW+v9Sr78+XttUkegOT9JoT6mXvmSeho=;
	h=To:Subject:From:Message-Id:Date; b=AOl6npuKP69o0RcVSO4aLSLH6OxRUX/V8mJ6ssO7oNJk/PSot2xTNGmcGxf7U7NQZq1QyfkT02Tqfbf/I/WQMOm1KoWOZHBXOluuE+FsmWVk51L6bDJ7N98wMlxSv6FGEPwyNqKAm8MIBf/EG4O+Xh1bDXLJFHPC+/oNjkTW3Fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oACiTkAx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oACiTkAx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDF7C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756302593;
	bh=c90E7fz2D6fPW+v9Sr78+XttUkegOT9JoT6mXvmSeho=;
	h=To:Subject:From:Date:From;
	b=oACiTkAxXMFJSsszxJ63d8bA1JDxlXiWRVChQrfriQUj6im3YABtU1+C7yBmRqfbZ
	 79U9QsjrpWY7NmD6SY1REanYf4qRfY/0LETQmhWWcOMTF6ZUWJwGghMHfX9Q1/IcXk
	 X58ZH6IXpNVzY/Cbf8XXP9cAH2AXku5Rgb3OdfBmId+P4Bg6UCk9hfA1RlfSq3RFU5
	 NhgKyRKyc/yg1L5jLkGaGhHcX+SSQ6kJyFPm+QMEtixIl1uFeIcBKD8HZIf5Regsh4
	 LY9qAipWSdcQXYuibxTasT8tgeTuVilWT4cBFpkUB4Meblc/jbkAGOO+N58ZhC+f6n
	 4C6HZf1IDwQlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900BECA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175630259358.6528.1302092175017449555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c1927da864e0932eb610aae142e26957eecfd28a489c943a5bb4478f4de08b3
Date: Wed, 27 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756302593
