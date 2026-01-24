Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF052BD0B
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769276034; cv=none; b=YIJipOxD09UecBFV7tU8YQlBQQgvwK1Dt2G1jtPR0h6CsqmV0LB/JbsdJq7Cew7AFGt4O8GFiy9qpsXntSBdh0iqbeO+FyDSmrXIMweM7ACK7Dtm/4cKhEtA1SaNGgKjxsTQk6TXrVovF9O8YjmYd6VfN1kAG6V1ByduBTsZ/h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769276034; c=relaxed/simple;
	bh=KXXBTxnXQJcINOvPKnZD+dt89O/7BZlSxWByKujJFEM=;
	h=To:Subject:From:Message-Id:Date; b=U7AxJR0uXjJN0cRjdIvGWlMkchEtTgx623Y8HlH6qoz+FL8W2q2hF7u6kjbW1pO+M0cSO4xwDlgqeKUTy0FfRILe13hO2OgXzUgYcBxsmMf9lfG872rCMWC2mOEJ5ki1zVUXpHxL2VskdB8HltPpV/xxO7NoGBBJeQ/czkEGyw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNFgP76U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNFgP76U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A579DC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769276033;
	bh=KXXBTxnXQJcINOvPKnZD+dt89O/7BZlSxWByKujJFEM=;
	h=To:Subject:From:Date:From;
	b=vNFgP76UkoYZiltu+6x/HgWTLOM/ZOYy7Zt7WOzuXwCaWIBJ/x/qaLBLHUs+Vk0BJ
	 YW6AE+eJz8SgAXngGDgd+CPj6mWN11JLkDu/TWM5uQq7EdarxQ9Q1Z4LLUzgqouySa
	 voD2/+G5Qv6VQQ4KSBaiLpuDwVlpMwJvlMX2SWGzuVa+3XALeY8qazzRSPoPz8CIgG
	 5j+CJel84qz5RHV1MVXXydmRJxm8hK+UXYNcqbDg5aS+abhtKM3GkRCnfNj89+hXse
	 9pDztNoMMN6jp+6O57hvx0vYV+jdk6UHZb3DI2kov3SC0Gh7qTPOP8F4oIfdC313x3
	 lKsbvnobMMMAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9495FD715EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176927603360.1708.1397843540348902940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49224dbd4f42e998ae2b691517fb46acc305e34bad90dfd74cb7ad5bfd2dc23a
Date: Sat, 24 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769276033
