Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA7F35580B
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769709834; cv=none; b=Z0LmT3pG01KWwGwEL60CAYW30ykR3J3Skr6UGGvzvwv7dmLg22UJKNWsT54TlSQO/TJ3ZxwGbhmFtRqPT/Ux/JS65zVt1PN5gfR1BSxG+HdYt9ivi7UtHw5hs4xWRTyx1+MEPs2/Cbz96eY56fKP7nE/gClAMT0BT/MxzA10Wzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769709834; c=relaxed/simple;
	bh=C/I1NRX9KDUprGB9ZRX5/dQFxad+v5X4MsnAO+SBtQs=;
	h=To:Subject:From:Message-Id:Date; b=PDNPmmrN7aIoG35LwStfI36eqXS8bqeG7xKuIDXuKoTll6foQYjbJoGAdz1Dg5Ll212FpFPPc56s9OAh7HTRFxJ3aZ9fWbjgEj5OzvsJDXChHxj5UK9Fm2T1Hm4mp2A/cJFZDV+6VSmJGNbu3waZPE6AS0RABxgn0zQJ47dcVbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+xCiC22; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+xCiC22"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A341FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769709833;
	bh=C/I1NRX9KDUprGB9ZRX5/dQFxad+v5X4MsnAO+SBtQs=;
	h=To:Subject:From:Date:From;
	b=F+xCiC22L2htVdkoW2T+eG/fB1OYNn4Ino9C7ud5oAcc7i5xw3rduuieQD1oI9BPE
	 mkyprQFv74U28NHk0d8oXn9vOKxsFKy+cralZMXx97m+7rFT98Kv9eEWdZLKRJNQ9R
	 L41fQmY6rNWmEtq0gC1FAJEzeLQCPoAWU9A0QvaeKfrZI7S5LYW4TS9Kc8+LnYvq4H
	 D8wFCqkI7PDVA0hjXGpBtASdEbo3unIW6Ffs9JOitYX+TswxuMDye3STOkE/qIxMla
	 k+zeRPXLavEklz9VyY6faFXkTA7gRK2tYTT2xZDrCfwWRQ0URxsKL4QK9rnej9QeKf
	 EDSRBnjsfk0JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95610D73E84
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176970983360.25678.6558432968250016608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a22aeacf0f20ec5c97a04248bc1e687e9d9100295febe2caeb723c9808256105
Date: Thu, 29 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769709833
