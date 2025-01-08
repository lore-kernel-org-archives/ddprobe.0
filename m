Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216AA15E8B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736370954; cv=none; b=iw4cSO683WQmxIefDT3vckMoUSy3m2IBYO5IJ2qXxfVPz+2gcg0OvVdE8KMLLLxuUShxri297eAEDSi0hMREekGdlkiEW1LIsqQCDlqimWGzK4u8GSwuqOMNvF+VCeDnPiKQcH1XHnrrWDQ8LFQF2hJ5g370cmqt8B/fqp83i68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736370954; c=relaxed/simple;
	bh=PHWcYVtYrP/f98jaojKuW5+o8HxPvT4bvi8HlJ5ZNNA=;
	h=To:Subject:From:Message-Id:Date; b=sQyIAsDie9TYoS/Eb/nbkWUYJHBZx4+INB1m1ShPEWdBTw2/uSLwo06OqJZ/IlZPg0ijxuLyr9t52CB/U5u0GmxudOfyVvAvhWCbP0bvA5L4m8eVuUlFEhIF8LpFv90YY6Me+Cw4AljZImCbBi53xYIYlbMND7rthhDDhb0fB+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p37xO8Sp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p37xO8Sp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45CAC4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736370953;
	bh=PHWcYVtYrP/f98jaojKuW5+o8HxPvT4bvi8HlJ5ZNNA=;
	h=To:Subject:From:Date:From;
	b=p37xO8SpMX9DtwV8QTAteS2imBidOAD/QwT83tCmhCJwt3XuTBRV/8cA8F+ji0gme
	 Iivvi+ZZGrrNfEb0jd1igCOIsI7BpGOVxRoO+FMzW3tp+Es6jYj/Uw53ZtPEsLkKCJ
	 kix5q7UHUMkXnqFz8lLMSZadzMZVIwIxA9q2SUcFOtTuFKMvmz+ZD5PJhfnN2kX/X+
	 YyinZLBp0cs+2Z5TIEN5rDomyrBgEqX9Cp12DvPxmAW9/eYjWBKCtkgNxHB5MeF80I
	 vI0C8YyGLPX/4l5xwYsmOQRAPWVuJ6cBmWyz8hxEaSJ+URa1U6As9UGYRva+9CCE+U
	 Yb2c0eA9wTgQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CF7E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173637095359.8090.14625790675761421876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf25f14c37d3591fff28bd9ee4f577ccaf824320577dc0d2492e5d4417af2f2f
Date: Wed, 08 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736370953
