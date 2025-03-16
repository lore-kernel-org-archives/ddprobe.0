Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C194142E67
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 22:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742165994; cv=none; b=e66jaZ9whNc/ARI7S1MIafZLO5JEpYo8qvPZtKHQ2ooKZK77GC3gHeZVjSVjF1YDkiNNvAR46+66oxBcDTKy1oWwJLlDeesD2R9+Mub9fiwHUrf6kpdbOlnLj5+IyLPJO/5Q+00wNUr1T2YGhL0X5BPxydQztk+lZzXtw0T58cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742165994; c=relaxed/simple;
	bh=/BGqq+FxXMPAtxPKt0Z0XkCLgymSSBiIADaZ2gk8uzk=;
	h=To:Subject:From:Message-Id:Date; b=me/VGJeZylX7EsLsH1LT5QaT72hjQasLHCG0SAbU+hx4qDor9YgYBdsQOSYFgpBLHU71gEh6xXRAqh9K2ZQEYT4yDhMRKLKdEdAQRYUwr3vDcNNL40HoRwh2X1cRdsJonK+uqXTvnpGL3VgZSrhDoIa1nSz30OFjyC12RLjidiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNY6Rf8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNY6Rf8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD7EC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742165993;
	bh=/BGqq+FxXMPAtxPKt0Z0XkCLgymSSBiIADaZ2gk8uzk=;
	h=To:Subject:From:Date:From;
	b=kNY6Rf8dUnQtqk0xojzhR8NH6hMsxWb3Q3ty0AHjml9+fZxLYGdCSEX8ikN1Ai3kI
	 t1TnBCs9YFcUoreCbLdoK9INal91riRWhvAWqxH1iD7EMsKIyEfTMsHWf3V3Moo1Sx
	 spRQ2wjxZHX9t7ZUDq6WMfCWU+idEGkkNPY/rxJo4xd9LCskpHXfc71fbmGD1Bwu3r
	 1bxuG6Zho/IMAYXJ0hCKgx2ebySYTl4S9ZpXNZXYMUz9a4PNDhDNjYErIzhv5ThCiR
	 Nxyl5ynknWlcVYJA9HmBn7Cd6gaR/MdZJwA2r4VL6f2b1fVpyn7f/Q1vuD5YCxOLsz
	 X3YcJVrf9T19A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5BB4C28B2F
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174216599368.2240.9091563852207959600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f852b81f953569a251f83b9872fc9167c8ff43204b02af828e66c24d97923d70
Date: Sun, 16 Mar 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742165993
