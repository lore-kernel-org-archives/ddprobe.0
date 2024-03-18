Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5C94C627
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710769697; cv=none; b=mICpXZAAWNobi+70qN3t0tfQMykTe6Pgvk3HowiN2yX84JIuHZSmmRFkxBwNsXtjyIVLSztSfR/gIXv2SQX1TQRbx+5iUiLzYf7+wKGkVevXm1wwoLp9dnPKdXIz+5u6QGIMK8h0alKZFYzuX7di0//Goqletr1jdTlRrPufawU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710769697; c=relaxed/simple;
	bh=plrYGYSoG7ygc2P0tR8sZPW3/7WOBdzyCKy5G3OIi9E=;
	h=To:Subject:From:Message-Id:Date; b=SpjbDhtOTUy26Cgm0vLDb9pSAnyfwRxIM3SciKHgh/U7UKUkbDYLxY64uyLEFuUlhdF0959ZvKnZ87kZUX/Kt/CDHuxvVRjX8yL/aghromPZDTi+7I1xQE5zw3fQdo/BzdaeQ0pt6tEKrSIQRZfNNk9jE/+pzwv21+SNsAXwP9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkwBcDgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkwBcDgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A1E7C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710769696;
	bh=plrYGYSoG7ygc2P0tR8sZPW3/7WOBdzyCKy5G3OIi9E=;
	h=To:Subject:From:Date:From;
	b=AkwBcDgM8JVankGqhkQGYlpDxfKbtvoZl3zz3/mFqYNUNihBxXgXtpTRJ30ZcX0rN
	 u9FPGAHtX5jpslc4Jdz4tMj5IH9JvFaj8guPNBg5hLNEKw1ujSLuQwhGPx2sHvXBTs
	 F3WxzOrYRF9spcCUsheqrbCJIyrkwIYM92/G1S864CVh1jr+Wc0PnHPbgSYDfWZ1NH
	 67Z5ETF12U/KqViWUpCwJZMnfdWR2Ebw/BuxqhES7wvdbpDaRjuYxIHYzQ7jyG0JYe
	 bkPjViLXp9rcvh6uciv6tP7JYt7cekpv6FbAr+HlDmO7Df+uKXh6TJDjDKs8UW74Do
	 uvfLRavRuu4rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66A14C54E5D
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171076969639.5413.7107699464119041014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b0bb0604b7647932b4a8d3adf4840abeddc951fced880ee951b8314addf7b05
Date: Mon, 18 Mar 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710769696
