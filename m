Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505D41CD06
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 09:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713088163; cv=none; b=M2OW0590yl12r4BaP4iVNfvIbdwtzUkjOcb+Rj82wYFh+u0wVbURDs/z+N68T+UYLAkzv7l7jd9c4F1YYR/G+6YYe8rruq8mqHYpJlk9JiMyvDi0Pn3P+1LrvzZX5LkIB0DsroDauPtf1soU8Yk1yG75aBsWaBVUy9fRTimnVzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713088163; c=relaxed/simple;
	bh=eNX4wJAImmVJnRBV9QIcSBfE8YkVa5vpO3AkArqsG5k=;
	h=To:Subject:From:Message-Id:Date; b=mBRqDdmjyaHzJ0YGtvO9ZWZb+zaNQhhrFHcz8O4UQURDXwXN+vRrj3neCXZZLo9Zj+eIQ2JTdRpgYTIIgQJ1Ra5uOQizuw2jjreSlKsgoHER8Nyx7DM0q0hh+KkWsJm9T7xTT1P66QdA4pckSzZ+GjGZTmcJADfNOWbhqF8/7bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlfVV3gd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlfVV3gd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3870C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 09:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713088162;
	bh=eNX4wJAImmVJnRBV9QIcSBfE8YkVa5vpO3AkArqsG5k=;
	h=To:Subject:From:Date:From;
	b=AlfVV3gdwyWAQaDefP8LF+VxGFh80Ua5XLYkpMBBgw02Dn/QZw/spUxsPdDuIpWjL
	 il2cQ3vP3ZhM6wFSu1motVJhRlDUq/9f2kNKboa5LZB5lmyhbEz8OXUs9Sl9Ib3AdV
	 UOY3Rbw3kPXOti9wZ0uyOV/YEeEP6UG92IYCL/ccNtUm6xhTrMyKr/WrdWn3AiSMna
	 enJXIlaiXvotr4wfwQVSOaY20bbZegUJRmwlF1uz92Ut7gdlSm07+PV3LpESMIQGd4
	 e0sxO1fWV1sU66Re1uVzvCQvSjrvQn/2F8RxGyQ0vozBlrkRmYmxG286ucpFi21w4s
	 7w2ENlQugkGaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4256C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 09:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171308816276.12554.2443804757513528386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c5dd246fbd614a3492195044644a902868d452ea4987433e67acaf54a7f60b
Date: Sun, 14 Apr 2024 09:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713088162
