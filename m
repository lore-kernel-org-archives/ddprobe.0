Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF0D78F43
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752886794; cv=none; b=TuDFxmD+zUKO4Ovp81IDsRW08Fu88Hs1xDGyVxdY3CBjLvjFTVJwyLTH7KLGbG/2Ox+J5Tmx9AYt6Oq4tUqGJXUwcSB5Fp6d5hlfa90BmIveDrkXJ+oy3oVl3Uuo9cFEs/aSa3CnKt5D5vqDPF4NNaCDNvKh7xpNlHnwVqSAooU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752886794; c=relaxed/simple;
	bh=V3WVpEGqBg/IgChLugVgxbHL8La2llLWydQuKSXp928=;
	h=To:Subject:From:Message-Id:Date; b=gry+haU+0wYJVhSIzY2F1FFlsMCYN24W2UJwqe7r2+oM8H0loe+YXq0sntaO8mAN+pDhcY5fOalp2xy8/s7OmF9IzlA0LhTXHpaudJ9kMp9mYx0EZ3fIcQat6zOLL2VDj1KLClZ65xe8uPX0AmDVFFGcDZOcyAbVcoTTyQTy+nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qs3xRtkL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qs3xRtkL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF26C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752886793;
	bh=V3WVpEGqBg/IgChLugVgxbHL8La2llLWydQuKSXp928=;
	h=To:Subject:From:Date:From;
	b=Qs3xRtkLVHqT2/3qEPAMYuzUiTz0WjgWN8cRyqCeyRawdUZaTtMy39J8WF0REOyYN
	 BO1Xw5CSStL8cdyYKirca856wnt8aLR9PYOgVSyOass4Ifbw7TKu8gVGomJ+MEHTZ+
	 gvuggcyX/a8S9R3l1WkZcrqJ5uIZZMc9E6feFo+toFtNrD0SjQjpOvmaeMKIo/YZJb
	 2hNSobsabfE6gO2ePeL9CH+b8TNAyJewaCIr3kPW3AmEmAw+hD+FIIV7y+QUI/M6Nw
	 N3LhEivscfrn15XASnaopNIY2WVHIcjg7AJJ7YitGwpJGwHZP0DdCtyZCxmaGMI2Vh
	 6jQ83xxBnl5rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDCFC83F17
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175288679358.20888.737954468675544685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 917fc8c482e64c852ecf7971a3450c1fe2d06faa54d2c7f2080c8904aea90710
Date: Sat, 19 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752886793
