Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089683A7F41
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770389634; cv=none; b=LVHvGo7m5NattAiCy0bTfGgZsLPfYZaZ4QF8oBI2vus5Yd8hsN7oyEQB8hNu1XIx8unAADlZ0D0AduVaGgBFtNMjq2wKM9km3gcbJ27QsQJoLggPP4z903gS1vly24W8lIGuogt+DFSvfvWLVIGYt2FeWWsbve+YIcl6vMbdiHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770389634; c=relaxed/simple;
	bh=Jg6t/7sewuJQRJ9nzCCkne/Bh7GloGmMdE9gLK2xjDI=;
	h=To:Subject:From:Message-Id:Date; b=dIn7BCb44s8wFxstNfbVCq2kmDZqsonmfMglaif0TH+uAR8TTmB35eYlv4y07H4+K97x/YRXJgOv4q62tdiij1sMwzCZnlNRqBeurX1XBn36R/dnsrz4ZU0U6W1nqjf8M9EpWpmsy4EaMYzPQK1UyPRnSQ8TSz4P3IPlbO1DK5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iy/fQQDW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iy/fQQDW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1105C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770389633;
	bh=Jg6t/7sewuJQRJ9nzCCkne/Bh7GloGmMdE9gLK2xjDI=;
	h=To:Subject:From:Date:From;
	b=Iy/fQQDWYCjC5GwtlklUdATcrJecODREprAi+XGlt2cgzvWBIeyhGxShSTZmEJUPY
	 Z6yn0ZVs1RKMCFXZHe/jX6ma/LGHSQaOv2zE9kOPgPED3n+yST2YreeeS9/liBu3n/
	 x4eTf5jNLInyL6TgeTZfd4HbsBCYoU+eujPYMgf+iw6c7x2ZZGVepOtIBd4xMyeOvC
	 31Z0WUHyywClHcTmGilV47D3eCJS2qw37skvlBaqI/9fb+6kDChvOWhL+aTgu22dWO
	 MUH6Boh1d3tXyzdqjLos43s4hcrEhnRCgkeCiBIF7sJrccVJwLDfKzm7gqyUSB/b+r
	 4aGPR3kXjoeSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D83EE20A8
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177038963358.24170.17008690767706605185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b774681e518ad31af3088e856ac243e6cb2ed04d090334b25bf6ec79dc52390
Date: Fri, 06 Feb 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770389633
