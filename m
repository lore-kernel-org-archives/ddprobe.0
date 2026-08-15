Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E7E233955
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786809034; cv=none; b=lLDKoNsg0g2W+6ph6MWbFirZi8HFd1/mHlDk9r6ljiHERxT3vqPJ3s8k2CRoiz5BEFJpkLhGrEf0rAshSu8yepMUMlEr1d7sGNki0ZvSpQmEWTJyEJHlSwz4i+HKtX+l6fog/OaisSw+c0O2pAkhs1xMTvuERuE+ua/XgezBPZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786809034; c=relaxed/simple;
	bh=BVCIfQQDCD9Ab1sZwVti+YwF5CWdNdDxd7Hpw+SrOWY=;
	h=To:Subject:From:Message-Id:Date; b=c0a7uPtUvx1gWUJoUKAxwSO37Jzm9kNZ3fi5MHvqYb5fjgEgVsa8QQQAfdxqFXR/rqki4/iC5jBa+4AfkfP3AU+tV0xkhOV2bkS00IoF5n7nezS+x1JbxwHYtsOPUBpe2FIIQc9/XDMca3D6XDl6eV9FEIy79eqKqKDYsKxGvk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxH7YoIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxH7YoIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55E3C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786809033;
	bh=BVCIfQQDCD9Ab1sZwVti+YwF5CWdNdDxd7Hpw+SrOWY=;
	h=To:Subject:From:Date:From;
	b=oxH7YoIkIykhS4f2m5TqaBstdqXXQ1BnL2V3af2ZijSQEve/eigXSJDzJOG/l/ZlA
	 8Xc16GiRYTsVK96Qf8Kga6RPqlWAb5tEfL9SfrzUghgWDjs1Wsey3rIcZYr3I8DcUO
	 MSGiesZUMHKmrRs+Dwu5+uFvtZohtMBYeF3Rb/mNh9zJvuHapbvCVCkxp4Jy9AfogJ
	 EVatYqx9ABYPHjFNSpNW1Mp2V5B18mxWSZyAGyoZeBofI3y3apzk1I6+hUR52/QV12
	 2fB6j6l+lRaJ02YxIk5BylpJFFU1g0tAF4hxmNC21a8eiFe22qX2DDW7ZdYn6YrHR0
	 lo8K19hC3KsPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA44C5DF67
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178680903369.497.15182481169620365105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ffd49535c10946340abb5347ea3c32545114bffd53e32ac6bda45fafd3d3c52
Date: Sat, 15 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786809033
