Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3856772601
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749008396; cv=none; b=hZI/qZ80e6e5ygXXb6KRuxuZCJtoeaLYk6xnI2gC0yziTx0yWn/0pvSGy3JNmyWobQjRkHGHA7rDop2idSU2FvLyeQwdnH/HcxR1Ge8glRsVbN9DyXmB6rcNDQKCKHBf0ymS+fRXv23fzrUwG0uUhUDdfjnx0DNGmvvL+Akn8dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749008396; c=relaxed/simple;
	bh=SkIOj8iimSQG8e9eHTPT/akZONRuLKTF2FT9oCIONRs=;
	h=To:Subject:From:Message-Id:Date; b=Nf/OYaOSgRw6Y6ED4Iy6Jzds9rtdyRnD66uOzBBWMjCUpcSpdhQs6wDQj6OCFmgcha9mK128o9Un2MEjA4fcxJMf75+zl9mNXfcT0KRW7svnXCArlbieYIFakzGFz2hHdaeBdz714SNERv2J+ca/C8BfEU9cQP9hzDWZE3d9KSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+h5YLRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+h5YLRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5267C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749008393;
	bh=SkIOj8iimSQG8e9eHTPT/akZONRuLKTF2FT9oCIONRs=;
	h=To:Subject:From:Date:From;
	b=P+h5YLRhWkm1+HiFJnV9VtOH04lCCHqeVODaWxs6+Qp4/es206y2a1TiYFZzI99V7
	 Gr0bqM0oT2r4+dykuDWRhjH6xr/x15AiYa9S7LksxXPxESBgGhRGnTX2oQs1f1Z0Dr
	 xHeFpTV2I9WD47B43hzlKIr6+8EzjteF5Lj0nCQnYNYvQpZ0MNmcPcx0+Rm42c+ZLg
	 2Z/56Y4o7cSAfVkHzhwbflxkTT+QL895A3gqAv7wKJna9ee5iMR5B9vg1z5gok0rc9
	 wgW9mBGxnzIVKVe6rDW22bimBFnt9aG4TQIqngdybEEr5LG4qp5lKL++radE4A/bZI
	 UosFQ2AULXrjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CFCC5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174900839359.8181.6358210691227222062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c044b5e5fda7d8339cc033f47bc413f32612de7c5903dd050139f273977382b
Date: Wed, 04 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749008393
