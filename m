Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132D933B6FC
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770276834; cv=none; b=i4PwpQZKHaKFfUcqge/n5naJvMiS5CuVJOSB9Y2nueg2eku9+tNU0HmUlr+rS8meuA1fvf75GQfstj27tAgHrwzAn7wol8MjcDarF6dLQ+y4WLUscX6sHoLguSRkr+PITUidZqZsYPI5wtMgKFwLgU+EyHzTCyKN2DDiRJQyw7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770276834; c=relaxed/simple;
	bh=fkqNUkiIlVNt3xFbbWdXqTrUA/i0uylUhNm/XiKWLnU=;
	h=To:Subject:From:Message-Id:Date; b=sSJOx7S0b/fgiVM9/B0eUNVYS4vicxiicv38gsucgVszcXoeVL7ql47N+zwqLl5kbO1tRhF8dPKBJAzOUqMZsow3szldD190KlfxGaq0IrI4z0ADyuRMFxpLbAj+vaUfBRPccmJWPQvUs1eDYmGVj2ynPTY+/iNFt4QevjtHRhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1wCw9Qn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1wCw9Qn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3368C19421
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770276833;
	bh=fkqNUkiIlVNt3xFbbWdXqTrUA/i0uylUhNm/XiKWLnU=;
	h=To:Subject:From:Date:From;
	b=D1wCw9QnHH0nMfCypAVRvGocX9p+/8Frq+OvlkeQu0I5Jf0Q0OFZsbkfPxrgQm+o4
	 zGDDGd59wyeT7vfAGJGZEmC0yvysbldmg/rPy4up6olZC2Jo+5Ffhv/wEcRipLLSN2
	 a23OZ/KKVEl+aaEl157dRu9xN/u5RL2iUTmr6MEjLzG8KWdIzzNpc8dGK00L4G83p2
	 73K4Uv+WpBvDN0pV9qLI1BX+BuDH7ZC7vztsFnMeLbYloMvqa0ffjJduEE65sZFX6+
	 ZKSsh0iq8eXqa2SV/JnGoJOaWweKmm/amSikUK9DKZEJGd9C4wGl/NxW/kgPpLtd4T
	 7xAFXWoTIh8mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1F8E9128B
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177027683362.10137.6255111750813794808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2029f4908cfb0679f42635617ef6d1cb42a6d14f5e28de040a062941dc5851d8
Date: Thu, 05 Feb 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770276833
