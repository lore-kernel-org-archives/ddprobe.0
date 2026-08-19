Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562273C1405
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787110834; cv=none; b=CEiZIYDiJOl+BuBoeLidtVTcksj/vZ94RNF/VAYwQszWPv/K4mqk/r2gAOdLUftGZodIY6fj80Q0YT5CxMc3/ZpxZpBJx85rHFLYo30QwQn4mhU+SYkdyv5V+9FA2bWodwwm5mNNgD4SHcIbthL0KjT4NDn82pKufN/Y9fBuqJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787110834; c=relaxed/simple;
	bh=ew/eFC+JJQPAB0cdigFYA8xry3ndcrjvvVITY7edh2c=;
	h=To:Subject:From:Message-Id:Date; b=dSaAUqmTChHErPnsiRjr+r0TANoLdk6ByUzxycFVVFThqjjRn/IovYpqNY8D1yAUDFq226u/xu9L9jT7l8KrTWwmCuLgTJ1EJFLrnuJqBwHNh45WGwGTr2QqPIIiQfzFBL7t9pldhSfL6/GkaEHc6pDjIzAaEuSou58aUgCTAY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtF0h6Ub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtF0h6Ub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5528C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787110833;
	bh=ew/eFC+JJQPAB0cdigFYA8xry3ndcrjvvVITY7edh2c=;
	h=To:Subject:From:Date:From;
	b=VtF0h6UbVE9iYbgRzbAlJ21eNd/KH/YwLHZH+d7Y/kMANjQ4ThDG7WzuzhOrPNU7Z
	 WP3AJLybY/yu2E/6OUx/I9qfnm51YrCPZUXin/IAlPCU+8XqYv2TBMKsLEelQ3ecdA
	 K3wMo8aE13zpW4MyLQoPTtcOVW2oadpPBeeAqbmrEXMNaaT1JWH8oR3Z/4FjoT5Gvv
	 EI8fg2FJwZ9Y1HHDvlA56t+11hbwObgd3eOA1E0cxESwXckbRr4AYhC4SM4YpRvBtK
	 1zdNNIREkLItA3xAPg53c+THkEZelPzgiHbXHXNvUwjXCqIFcm3J4/7VRbhKOQ3CdW
	 YP9TulcJzzgyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2A7C5DF7D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178711083369.21049.11955987891140819901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ce32843d1cc533cea50702b3fde62c6ab3a8cb2676d7eed899ab8736c4e706
Date: Wed, 19 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787110833
