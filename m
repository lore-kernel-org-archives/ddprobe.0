Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D41823DE
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 02:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739846935; cv=none; b=WojC+pTWgCidLK7OgdcM/EFBliHFaLRSsml/lmaypSyfiMCGhI+BhB9o7waQasDpKGiGDThI6lYP6e+hVe7gppCSGP0+fgKkqiEHvUUApTgpxCHOCu632izH6t82yZi2XLVAvJtUJg86G2RSCyUktaWwc1tqk80IOQ9/si2yxJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739846935; c=relaxed/simple;
	bh=bGnAHzT5lhlDBbBb+zW+jQMG/zuURS0ncazB2dtPPE0=;
	h=To:Subject:From:Message-Id:Date; b=od7U3qkQW5TOaofnOqSKcA5AEh8s43r/uSJjdbvi+v14ivIyVu5g4Hi36keGZ0Y63IyVOd+OA68/U12Kj1xpBEJomjJWIWysE4DzfrsYyiChI3cYew5KFXDWA4WMu82p5GNjbY5xRNi9o2f5OJi3GLdo7hh/k04VidbzcQdLlPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lk/Ul/7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lk/Ul/7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C38C4CED1
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 02:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739846933;
	bh=bGnAHzT5lhlDBbBb+zW+jQMG/zuURS0ncazB2dtPPE0=;
	h=To:Subject:From:Date:From;
	b=Lk/Ul/7fzAsalT9LBMA7l0FMZH3x9VIgt83wLHQH5Ia86C/tHyPiRboZ4ml8bF6YM
	 AY3SrrcrE8oXBsZGfeR7kC7yqw8qnk8svIYPouVATV2OmpKBzlEdwYv4TcYImilKE9
	 ZofZhYYT6g2azXDycRW3nAKOJG+QzRgdvCsDP+3jdD7+UcH/XSpchJQbf0/Vw7dDmo
	 Gd8drFvP+5OZLaCmZVWcTi3Av1dooHvxf0gVdi4wjAgC3ANUuHErLpfgiuUB3JRIr4
	 ajWD6dURYlVFbNkjFxnO/jvobee6gBSFkMZlRMr7ZM1A/hEnpJiSl/atx+41OAV4M6
	 9JkIbYRT0coVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F720C021A9
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 02:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173984693364.31238.2989890712344142614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4bea9958d6d97cc67fb1a99df96576e423ae6238dad0a11114e8c9e968d7e6f
Date: Tue, 18 Feb 2025 02:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739846933
