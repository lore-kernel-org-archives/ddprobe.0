Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F7C3E2AB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 19:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778871634; cv=none; b=inIueKyg9x1AJGPviiwubsqJ4wL0I9rPZ0VJSEjPTSPsbUO3EFfXib+3IwuWNTEk8Y6CR0q85y5Ve7xnG80Q6OzdFZqM5zbGf0PM5CYfp5RHXeyryCRAyQE5OPDukj3GG+Ps1mgGuJRj8aWRlVNti67jFDUkbBEtuhg8UE7SlN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778871634; c=relaxed/simple;
	bh=sxJxCHa2PQHW3MS7SvdVNO6iuE8MjkhDqI1sXAHX0IE=;
	h=To:Subject:From:Message-Id:Date; b=kgdUHFtxDDm/dmI8Wp3x7NSsVVKV73DrcgN0o/AIlQJk6+SriFQn5xcyR/q0si/jy8K1cPYfvpiF7Bl9GynULmwJLvZlbBUpR0TgITdZZuZSRo46ZHHBi46uvylIndgeycFJz/b/ewPw/GOlj11mLJvx45VUO1XDTW8JKp8di9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6NXZ+CF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6NXZ+CF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15B8C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778871633;
	bh=sxJxCHa2PQHW3MS7SvdVNO6iuE8MjkhDqI1sXAHX0IE=;
	h=To:Subject:From:Date:From;
	b=X6NXZ+CFKhmlqDAsQj42ZS29pL65KFxvNVhTGnekDX+NYl2TvbWkw36lxhCF/WyoB
	 w7aGPZHEnVES9lk8HuT7StE3DhvFf+7YVg6m2Pu9/F2Qk2JJM3POim6SA+1ZiUzk+U
	 zBg9sP/3n+7o4D+JmLW9Ysg4FvuLC2uk4V1dTUJZNokYnGyBZ0JOBVhAgD4JDvsC6K
	 rynag3O1eXHdCm0R+McRm85d1D9D4SguHdF68CQu8iA01tYpQNODO6COa9BQlupoih
	 kjH2HieNWy3486EK+2SRf2MaSZeqTb2h/luv4OwaQUZwiTytNRtNDEaxkBYrTE6f4M
	 erQwCXVfopwCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0295CD4F3C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177887163371.6943.17401039721436929854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 799230539b1f140f2f791b5e5ec4d6a01988b4972f3e449b833fcbc973003b1b
Date: Fri, 15 May 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778871633
