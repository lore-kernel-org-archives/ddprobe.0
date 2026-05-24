Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CAC330BF4F
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 07:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779606754; cv=none; b=YFSwCauS/KeRchxsh9khhgo2lGgNSGnewIfmphoTxh2N9wal8ZLhmnD8mADucBqpnPaQvWAm8tB3hfsyeLWPZG8lLfNS7XItcRCAELNYPrxdPhs2GSIjlATo4wBdX/Adai1nb7WZR4d+kmk0AWKfsBbQ8/HqYk5NRPzxUBYLbW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779606754; c=relaxed/simple;
	bh=ikrbFx3f/vXhC2VeAauaETyyqPQCxo8ZOxfmY8NI+a0=;
	h=To:Subject:From:Message-Id:Date; b=pwc/sf2mD8zRM54XdNpZ9/2ipDZpQXrOYZybvr/gpJFhx7xVbeXmB2TPzQSNAger4TIgF/OA9WPbA1LsEevL5wOq4hKu5Ip3Fb7fVgsAAXymes84Aa4GM+J9RIbr7bcj5cQeoO9b9lahM1hw0amh2w51nHEjyBipRqbPTXj8E6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6zXI8pp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6zXI8pp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6897C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 07:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779606753;
	bh=ikrbFx3f/vXhC2VeAauaETyyqPQCxo8ZOxfmY8NI+a0=;
	h=To:Subject:From:Date:From;
	b=T6zXI8pptzccWRy2EoQNTjOggdZvkNdCm6tRgBVfp63swu7/Eq6Cuta4K1aXPwFSS
	 rLq1XNPzc6ztHBE84PQ4AmjiaQRDqtPHZL5vIkz2PDq79YGOtOIiJka3Poocq8Mo9O
	 WZJ4xVZMk7CoaJnIZ6JsV2zo5x9RzM5tBWCB9b1Lxj5NpUmHEtZVYNfkoD7tCT30Xn
	 Sf3c5NJk9SBgkpmf8wPXIDDU0opJmQjLTdnCG5FZKfEjNDK+KqQUnMcW4q8Uvy54I1
	 Q46kYbIWFhfXBbMkcR+tn1u67GdKzXVcsHPSoktNYRQp2LzNEPvBme+Da0UK2wFFr9
	 7+H8Rxtm1q5Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB26CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 07:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177960675368.25100.14629579620393301782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b7543f125f7b78474e8d437340df2653bfe21fc12f8dfed5f4fd140e8d4192
Date: Sun, 24 May 2026 07:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779606753
