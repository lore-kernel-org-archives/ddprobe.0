Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4275B22FF33
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744694994; cv=none; b=A/c4dsb2PdOeRzYipsyhy21tDvzkoFediF71XpNflIIyoYajZ1TK7yGVnSSquLW2L6vCxAkdJxWdXC/ovH5dujOMEwDC8TTc6ZafdkWtXiYxXS7KSeQc0Mo9rhMDORmU7b6vzrh+dp/hh2Mfv7pScDpBRrZU5Yr+i/GcOWDz9VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744694994; c=relaxed/simple;
	bh=tJoyu6loCcV8i0n5VvD8wjOpk7FArOvF/09FadKFfLI=;
	h=To:Subject:From:Message-Id:Date; b=Z7+bYdVu/69VadpiDO1QM8yFcJAnfLTBrCXpxjIR01Z8usmf4ppR+ratrxfXY8AQ7EDX2hG81Sz/rqM+QsGdTDfSzH+wsiSDM8cJCBxiyjJPS0a/EX+4XtnE7HsiapCWDcdnYKbj44I0lRBeaV2PmBLghswBRyuKMRgCJoozmc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIWO65bS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIWO65bS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B41E1C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744694993;
	bh=tJoyu6loCcV8i0n5VvD8wjOpk7FArOvF/09FadKFfLI=;
	h=To:Subject:From:Date:From;
	b=cIWO65bSMeEWVq9AFf68VL+6MgZhkFlUmQf/9Mc4IgH3hpwr+86X0AwJHBVanVIxR
	 8GlOvwf6CsrHVXfBQ1ZRPK2soD+xbQlYYLNv3uJj91N0C7hINEO40iCo9UFgD1FHBR
	 hXK9Wx46pegMrSaFyYvwj+8qkPJ+0brDbXvPundbEdr0MqM9xuTW0L0fRHaEGuT1dK
	 nU6wfEhqWDGzTOnKfCGFcxSjnu32L/T4a9Qq+fw1e9q+MYV21qBUZzuRdDiR+RLS7P
	 4mXEnQWFqtPmWM8c1yBbWT/bby5qp83p8dK7JKSQicvncSepI76W0HYuR0kBDWuf7+
	 cLUmWHvpF4+0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AF6C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174469499364.25298.8439109283214205787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 149070f78920109eb882efe4207e2f8aeca56dcda439b1cc72d74f7b99062b2a
Date: Tue, 15 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744694993
