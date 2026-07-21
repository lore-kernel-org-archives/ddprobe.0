Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90B0746AA93
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 15:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784648314; cv=none; b=JCM60/7Tij2YFRACigxQMTzvEkXg9vQSrh39XPYY69RbeJTjdS7mjvy53P+2GonmBG2vrsiM5MjE1YhzFecPJjF2GfaU4wBv52d6vYvAGnqyBya1EEi1gyYVz4sybmmD1s7un3EUx8/g8cP5h5ZZiX99qnFRd3yXZwfrm2E37cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784648314; c=relaxed/simple;
	bh=l0h0JMbpaBrj71QUUo3sXGS5YGD67eJn7ErhMseYeIU=;
	h=To:Subject:From:Message-Id:Date; b=rDtgYPldp5vISWmugYImd0hEoKfmXqaeN+zSY91KJ8zRNA2oJwpcr9U8YhGTOJbQvEqFxE9B6ybSXfBDTJyHHk3aqL/BWlXdZlqQqOAji4MB1F1AQvg7H4hJqdCMwm2GEn/EoAOGkjVJNMczxzLW0xP1YFn7PBcIY937+g2b9D8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaxM5jd5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaxM5jd5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F43C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784648313;
	bh=l0h0JMbpaBrj71QUUo3sXGS5YGD67eJn7ErhMseYeIU=;
	h=To:Subject:From:Date:From;
	b=iaxM5jd5pN0cLPLKK7ABNm/Qj/oHyNgktYLJjc1jpUAtZ9zN66MCpt3CHwAZJsN9m
	 n8akfCHU3BvKxjDhZAszuRqw8N6je3cuwHNyupv/GlW6W181cp9vS0fi86Xox2VtxA
	 zCeLGnkuL/SxmZEGnOoRyQXMY10kkt5CDy7ydmWNS9cmAfApV5w3YP3Bv6sjSunkFh
	 T92HVs14yfhYjTgsCcCTWjrDFMOUZt0JnAWkMKhmL8eHgKxi1bTIaWU6s1VQLLYupR
	 4rJIrXY7wW79ojit03ckVMpEyZx2HCMsr4UII4NZF6OW0QJ8st2pDN2Pj+BKtioWLq
	 yALrKVhb9OJ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F03C44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178464831368.8167.4391676386670953922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d82784b0129bbe8fce4b121404a34b82ac8d2320732825a965619bf14396ae77
Date: Tue, 21 Jul 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784648313
