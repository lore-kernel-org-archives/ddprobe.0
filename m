Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A963F65EC
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773767694; cv=none; b=nbKBzCtQN4cgiB2Nm7TrsG+Z7VyNr4ZI68fRQhnvPTjMiIHwp0IjT6PICemuqsASiFXFI5JgZG5xyB9YZn4BVJ2Gc4/qJnDbYXr+lA2/kRCWXAjD7fbnoz1AyIB0Zh1KuIQNsFLaAPawU1CYbtlFGL7zACT8Nwz/OQEHWXtrbXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773767694; c=relaxed/simple;
	bh=byTjja+ot9uv/Ls6dML2JYSZtAhQ3pq76g6EvjOQAwM=;
	h=To:Subject:From:Message-Id:Date; b=IO8vwBB5W6tcw/+6kgX6QbJ6DEZB+xIJrNEbR2lkY+hwqsNlB5wN9Z+BBDQlg98L448tXbAR4Ga1CFg/6awIzny7W+ukdhBPNTHklQV/TihKg0GJU6cdizKh2s3yTfq33QGIjYCMnLpF21E17E1teYvETq+8cEC3lbfFzFG3fCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQtNcq54; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQtNcq54"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F356C2BCB2
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773767693;
	bh=byTjja+ot9uv/Ls6dML2JYSZtAhQ3pq76g6EvjOQAwM=;
	h=To:Subject:From:Date:From;
	b=VQtNcq543E6yc+h8B9Q//vCaEjnJiylPGTKJMzGDTr5uatAHZcsH7d4dEFY9V21W+
	 7R/HrmSVj2i2IeojRs0WeuXzIrGWyej/qasYHNw+qfXqFJCoJGgWYbcGtTFQ3RfnVV
	 4MAWjcy5jgv4bsuSzmXP0AcE3VgsYqV6gCVO/e7N9HmR4Ql8A+40wPCRRp/RUm7h3X
	 oVKlmvyMCe1teN+KXUD0axvcjQwzZ8b+7bt50Znb/5fetIayyFUIdAKYJN6dpEwWkD
	 BTMZtPmIa3b3PO+nFzeuror976dM3m/xUf0uTsv46WQqd0xsp8ZBcexohlf+xedQyD
	 UYMAwLr8INfTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8AAFED9EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177376769357.25265.4992421370965852413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac6161d5a180f100b286a6243d9ce9ec35998ec72d9de98def1480dd4d11ba4e
Date: Tue, 17 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773767693
