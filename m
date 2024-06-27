Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE5513FF9
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 21:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719522263; cv=none; b=p2ZJ1Teb30b3vl8OFm50hQ8h7fTTPckAdTwiH63UDSJoYDg9kdQTsyMsshVaDr+q3zSdOK3MKDE1Sk5s5BRnPjx7uC2yuakHzLmOltoW0HYmB7k6bFoandG3Bu16HpCbA/eZjexkOw0Iz7o64nAXhvHy+5UDXJPRdpNswwjckA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719522263; c=relaxed/simple;
	bh=w5gBi/w/6h7lMiyCpRSSZ09SZZg+QxnwhNv0sfRkc8w=;
	h=To:Subject:From:Message-Id:Date; b=lHwGYjCMWRWVj0mO7DGAfayzsZW2Q0vE0c27QFAoXVTQAh8Y/Uno6/4hOtjHF/XpofjI6dKzCWo6D/JZ8bNrT62rn8M6HWl/KLh7HQ7fNwU1E3298rmxeT+WPmt2ie45uD9awCkg+go6C4y485RI4y5uSHYYvvKaL1BVxM/ura4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qk1FgLGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qk1FgLGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F6AC4AF09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 21:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719522262;
	bh=w5gBi/w/6h7lMiyCpRSSZ09SZZg+QxnwhNv0sfRkc8w=;
	h=To:Subject:From:Date:From;
	b=qk1FgLGyGzuINjIuQOeudoB7u0mtDB4DJcOdNd1LCZfgnVb1nK7tWBKwD1mmqXPwP
	 sOl7SinbbY6fFQ8jz25PLeEHY9AXja92XNlrWvyAKShXrOL8REYAkxC4Mj1AtCm+MD
	 xcsojLCtPPGMwKBfvWhTh5cGdp4rZz+TSRqv27nUm44xkFp8LQsOfKGMUbovlL7Fll
	 CpEIr17+9xKT2hM8yTh4l2TcvXTXR3Ac3+RB0e3uWHkIy3KnnNzqRCD44Tz9aR+/i9
	 HSOv4zdZ/Jcu5PtZaoZg/iEVIztMYxqBo/1dgSDZcCOrlKTjlg/bAR6mcSbzxnPElc
	 AUPQYKVwg2/mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C92E8C3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 21:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171952226281.13748.2989269803548213430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7dcd7e81c6c09b5d8ade76da1744328d76eb870c6f2e26421efaec5d044074e
Date: Thu, 27 Jun 2024 21:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719522262
