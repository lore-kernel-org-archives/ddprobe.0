Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3420D15E90
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745291994; cv=none; b=MA7HMtl/05VquetisvaMcZpWX59i8t1vy87LYkktue8s4+hAEhqS7tL17D3WSN2TtZcJVovKeN18Reb17rUdi55DD8QjD0Qy1Wk6rDGQnfNpsYvlBVfwBhvC0NA+LZb6aaWtTU5z/jyjPDBm7UWqsdnHNds5NzTI4czAb4EzCBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745291994; c=relaxed/simple;
	bh=oQSdlKTdcA9HwHOeCmP8ZfWnhelNhT6HyP/1Z+mdnQ4=;
	h=To:Subject:From:Message-Id:Date; b=VWIp+DjK6naiWnvVVbpmfuaGsiw0SqDkCGJFlMbDxaBo3N9Bm7VQmAW5w1gHl/pzdCilytjwCdQhJToYrKefs0HvFi5hu3SLED2TlBVFqMnE5beqXhgclXWkNRHxb39AfRSyErPrjvKAn5SmiqGleP58yb0TxxanmRp/zkxTOKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTB6BD82; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTB6BD82"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68B6C4CEEC
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745291993;
	bh=oQSdlKTdcA9HwHOeCmP8ZfWnhelNhT6HyP/1Z+mdnQ4=;
	h=To:Subject:From:Date:From;
	b=qTB6BD82KjA7TbF+bS3YwVfCNjdbjwgxKcJVyFqtVS2ycLv2ly9AFKU4kyc53IXOd
	 GqbWM3Lcf6h4Ry4Fv9xJPeGu0dQ5VdGVIDKC9miq1oLJjSk5vyxgKEQBe6r/J5vYDy
	 R8hSRA1+SE6wc8CsjnqWsELdCRXSxKHfYPXfRMCmCi2dbUsPuAJGRz7MuK4eRDIdKd
	 NjPi8o7ntzOzN4y13GkAldhD4Ssswt2pIVAIwTnmxRf3DwWnqQvmulVL7JlYYog8/B
	 qkt7EV95wyhzHZ1mmp+I7dP5Qi5upX+kBOryKVgFq2AI/r7RT494UGZy8S+EyhY0/X
	 p32G9Bxf4cSdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F57C369CB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174529199358.17871.10796177251193784091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: babe16c756dee7a846fa35664122db61a700b30fe9d461c86276a51a55974373
Date: Tue, 22 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745291993
