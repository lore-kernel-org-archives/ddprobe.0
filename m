Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D2E2D8DA8
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751900394; cv=none; b=tTolxt1vrZ11s11ANqt+QSSDg7neudaZ38HBaq8nKWS7a+L8WSWAmjZXKQBsYpeTG83m9m5Yjqa3gZxoLuz9wSeJ6WiamBkfVr89k0qKPcgBm9anq0X5a8cnaBLZwrGdRIglmpLWL7Qy9BbURzfZ3UrcBxxDJtLpKh/uYIwxUNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751900394; c=relaxed/simple;
	bh=XWqPxO7LlY+ru4BJRGoMmh5zjgkGt/tB4/5jBz7kIV4=;
	h=To:Subject:From:Message-Id:Date; b=KEGECcDXEePi2MWw/pcRjrPik1BExWMCE6dRDDmDAiBXzfP5wOUHkvVqKauJ0TlrIoeeVJXDQsVw5p/UW37l1pQ2aDwJ8CpNCQKnBZ4CIHXE+X9+w9iZcKw9amSnazZjOp30+gRcZzXSzvvTxgXMUm5mYtdzdFm4fgUvJsHTUOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/rVN5m7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/rVN5m7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3B6C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751900393;
	bh=XWqPxO7LlY+ru4BJRGoMmh5zjgkGt/tB4/5jBz7kIV4=;
	h=To:Subject:From:Date:From;
	b=L/rVN5m7UyNsPYjmzcPw0jvo59K2q9pPdOgn8DzrjXsDiTLqnyZVmaT9fhIjicvji
	 XAQMuWN/ZYE1MuImM/+NvfUFQUUp474Uw4gT42c4liqikIxNmuLau+55RIy+5LcXiq
	 muR1u5RZzpUDMAKc4QDrw55aJGxXhK3WLxmNo7Yi4AopwZ0+5eK5QtXDWtjAaKUXKm
	 HltRZvVjlR6AoKmK7cvnxt50Ok+hm5XbsTPF6LQ6P/jOkYg4Q6qQsyF2qYQJNEyETO
	 ZyxLR4/feqhWCJBiCwVcpXn4Rv30YBH4vHI5WmvjOoMWx/8eWVJHTubueRA4N2h8vS
	 jyHi0vl9jQDig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F58EC83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175190039357.17830.10694107824447156767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74327363d615152075cae6d396d79e0d7d269e93793a249af65ae33a68bddfe3
Date: Mon, 07 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751900393
