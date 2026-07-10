Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6C441F7C0
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783683515; cv=none; b=Q4ysb2lvHAJtaX4TVR/LK8Tu0hU+pJv1qb+MjSZIxGYxR65ECoIA8Y9oA8jcaUW96819oDoWx7CpVYlyvDO/SWManDrCYIS/zKzipC5USQp6Jt5Pr8ICwbo86SvmU5b5Nfg+tJLWz57/8Kr7PCHD/Nw0+hzPQQlVcQFeVIF9rX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783683515; c=relaxed/simple;
	bh=JDrhAxA1dDpj7/nBB8pCidPuxkQrRJkEqWOD+fHtUlM=;
	h=To:Subject:From:Message-Id:Date; b=ID6h7l5SKf2kiHftJgM0J33IydEYddY6kWCyUL7OjRA6U4t08oL2x3WN9CtC5QU5VBzWZcZ51MYk7bB7V79LQXXDb/KnP2iVskFFs65ZrqW2lk4IaSnRGuEz9s2iLYy4fz738KRqnrmsUSL715LMJe4lM110m214Ifpkvelzt0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CtgbfJM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CtgbfJM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C83A0C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783683513;
	bh=JDrhAxA1dDpj7/nBB8pCidPuxkQrRJkEqWOD+fHtUlM=;
	h=To:Subject:From:Date:From;
	b=CtgbfJM1BFXpZ+lAGqFnBRs2U8ehpDKNZIhEwVkb6CwdVThoXD21Om2PXTM7746P+
	 1nUP7d+1Hg2822FOEEpD6dSgAAUWMGUq4h8fbXrPPs0ZCFbvLg86zm5gxAI4Jsprel
	 mjv9HH55eFfXw4kE8uwM9jMkPO533gqLnQ+BYkIV6hIuz+ayNpKUa0qLG36Eo3lshh
	 66USCXfv4kFyy6v10GRvZntVxptCmWoy3hckFJ8RcuFmDKv3UnCDe2JYZU4MZc8Wk+
	 /3Dq3YEakPxyztG+BRr0sDlNeDhqI3JfLptafNfwr3JG0/vZsELd1CgObOtrczf8rl
	 PYEacjNuIc6KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8818C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178368351368.19376.7474350186478994480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a07ed656e6b95265c355bf33b0713845559633616b746827abd52a1bf8edb666
Date: Fri, 10 Jul 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783683513
