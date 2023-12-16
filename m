Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EED114285
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMpJ24NN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83238C433CC
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702716496;
	bh=2qhibeYUBaR0jkhxqedCnEzAcDIeomf8tLcBiSAZHR4=;
	h=To:Subject:From:Date:From;
	b=WMpJ24NN4JSowT+MqBipvwbSU+cbJBPScT9kkKjWhn+YY0woT6fK1Ngly6spMxbvh
	 DVgms+fSpIKJKUAfbjQbvpb7GXw1qtGLluq7nqQVq4ZH3uN8A49vO9+h1ElKj5tu32
	 iOH0fvHw3jP8Tzgrs3yuIA+NcmmfSjM3nCoUInxWHIFhpKME5NnDwaSYDg9OakjhHy
	 hWV66W0dpeZq6PYLjYGLQYzyUcm0cufm4JfvkKlby4yj/zuc5GAJYRW7P7MKJ5SYEj
	 zrOKFX6BeOmJ5M3HJgnuN7IAkhkLcNk9ZEy+6nIVIqmr1P3UySPLz1+1u7FPlSYxe5
	 2iU2VHR7B6n6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F7BC38147
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170271649639.31829.7338397876432568476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7285a2b1f4942ac4e8ed60a7ced1a44005c2e21e26f3f6ec6b14608e716740
Date: Sat, 16 Dec 2023 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702716496
