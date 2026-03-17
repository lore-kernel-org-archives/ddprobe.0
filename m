Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1622D7DD3
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773763493; cv=none; b=bt1uLMv+OutI567t6J/CCx1cANXVDCl4MYbDBGozqvg9y3kQRJQeLhZj8TNuAhj9QiafqwxKhWzMv5bEG5DCq5hFWGcem9j/NiErxsWLjaoPoPwgYs//Y3VmJgvai6nDwv/aflLqSR8rNFTez4Bb5QcWwUH4awNOOww08h9Zny4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773763493; c=relaxed/simple;
	bh=/iJ5/Z677ImoqXcw+72h5VOPsQq0wW0jNjegW3kI2Ys=;
	h=To:Subject:From:Message-Id:Date; b=AOaj5VZDowKBG6qmsMmKjoOcO4N8KASyXBthwKWGU0oGHcgHk4GZoVzjclsja2fDcoKfQXKmkqCf0QhytKay/OryzgN76xeS3lLyb3Xtqvjgx8lGG+rPp+oFuVPUl9+IhVHikuLkbAIR5+9SmagHxaShrgd6NYkuLW4AUPCQQDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OteRyWNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OteRyWNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD03C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773763493;
	bh=/iJ5/Z677ImoqXcw+72h5VOPsQq0wW0jNjegW3kI2Ys=;
	h=To:Subject:From:Date:From;
	b=OteRyWNs75e1kPsIZhRd/J1JlCyVUcrGj5ZX1xvRLc+5/IR/TCkR6beHxfgs87qfS
	 ATLn8K4alH6h9O+nf3jEFBU35h2ZFo38bEUgHA9JLhDRVrwqVLxa86dkwbVIZrOEe/
	 3xJd3ooCpmOqjPmq13ogeY4jJomqlCQoUUF+cPijwp7LGxkaWa428haXN4EH290z+3
	 YRyhscSoqp5eCRa8+jwSIVmf13LFwCPE08OJ6crIbkcdsS4dozpmzNYF54o51fAW+M
	 kopidhGRJEqNbWfMQWcHnFYiqHNyvMewU861MkOFCvOjfc79N+hJwYIGuBxTBgV2cs
	 JKCjZvLnFpRhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F644FED9E4
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177376349357.23908.6752356915837764796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95b70dc9ee7f99af74a6854479568b7d766f1e89dbea3bac9bb03e76e5a4bfb0
Date: Tue, 17 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773763493
