Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A5615575C
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744670393; cv=none; b=CJMGCk0kobDi2/DYz1U+VZJnIAbmqwfEOWZFzWTcq6lylQsYjsOWoHiULzNRxJ+xBe4xdxbarDzt6zHePWzXNbdE4J499Fzd6cIITNnn+T1dJu/RqnA6UTyWsFNr6Dl5bYmt9x6vBRbxrmpl5BTIAPeFJ1jjyRUUPwstt9as4vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744670393; c=relaxed/simple;
	bh=7Nvq/2Jqw19aZ9KQmjhg0juPsU0Qs+hMAQn79ZpUw4w=;
	h=To:Subject:From:Message-Id:Date; b=Kruqvqtjgbc/utrXo9/DZw6q4LOSuBpHGzGQAdMbJfRq8qNE8r8Xj+4FoI2owv6Af33o5kKppTCnp+fAQouZcQjz8fSAa4Ji6rQg4bjErvMkrPE4IRnoVnU6ahYoDxO25mMNVwk8zlwaPICKxEo5QqbE/zW7NwwZ67Y95dCMvz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaAy0UMg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaAy0UMg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B628AC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744670393;
	bh=7Nvq/2Jqw19aZ9KQmjhg0juPsU0Qs+hMAQn79ZpUw4w=;
	h=To:Subject:From:Date:From;
	b=aaAy0UMgQZVgLb9v8IYeDzRfBAdDJHn9pvB+1B9OJn8ylAnK9ZBEETjeIqEuPLqk6
	 7JmXXgCFya+baTrGk+cvd8VD/EQ+AMtgYyrkm0Ns9wUHZpKPM1d6bP74PV5bolFdBh
	 EZKPGysYCQMobHZQUre9A+QD+HkGs4833kPgYt8NN7fOf1fEXHWw6IKlT8bKZYKUIu
	 LvzHFsblreTpdM7oVa45J92YFn2yAseAFaVAy0fV+H4Z7v7yNzeetgCghvYGjJ/xF/
	 6ugHYRJ9I4zIE3a2Cx21MIcvC6v7QvovDXKMCVxxy6Urs70kjOexxRNt2NzhQud3d0
	 T5D6MnPrKXwaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A10F7C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174467039363.25539.8773245082505617599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 404563cf272900398e7664652b13b2c02e6059c95c8fc39b8b2d1d22014043b5
Date: Mon, 14 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744670393
