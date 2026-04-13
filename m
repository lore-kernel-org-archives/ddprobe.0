Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1539A303CAB
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776116854; cv=none; b=CAKMV6tQWpTXwzQBhya6GmdW8HC5m/EnYFgCw6RN9Hmd4oMM6Kmnae4U0uS2baMl+euusQ/64m6gr2dzxPsKqkUlbWdcuHbI3aKFSXsYFfWSq/nCL4JQe5rrIHnWZq/XvsbSje6afoPamkffoB1VB6lXT2uYzcRP8zdrKOzZnS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776116854; c=relaxed/simple;
	bh=4Pf8kzz5OOjTlSAq3vYBZXwTJu0ANxI8ydGB1VV8/m0=;
	h=To:Subject:From:Message-Id:Date; b=F0GRiFYfAX7qLwVsv3stYrakLzo3wG+0lkJXJjNnsVS+JdJMV+D7cHCcP+CpNjkxIgmAcLtxsTUOHts/I69G0wc3O74gb46QIKia1YZ+tiK9Vnj95oKou+21E3xHyT5joWv145YEioYtR/Ys+9nrRMS7WodxC/Y+z9Goq7U9DTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hpt54dPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hpt54dPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB270C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776116853;
	bh=4Pf8kzz5OOjTlSAq3vYBZXwTJu0ANxI8ydGB1VV8/m0=;
	h=To:Subject:From:Date:From;
	b=Hpt54dPjbQ1noL0eUoqHn8KONU/WpTFsEQko/l/DozMy/P508YYAbEqrmNZXXoVJt
	 8NIPJ51HmOEdZmxId+l8Xvm/sX4DVuUyTe0pLU+XTsAYOsmFyrkyq61LYK9OgOBYOi
	 RTA9DKaER1rsRkJLUgYr+a4/x9M45Lwdi9zcl6bCe/TJOwRBsKd7m5aKXRj+I6Wpey
	 U6Jur/2N8PqSVXayA2D9S8qLy5B1csr5ZOeBGOYryTxc2srlk0c6QTMNLVxOpx4Wx4
	 Sh57ynmfXaSOpXBaM4dPJZOz63zyKpe8RX/0r6KZtw4hkFNoTkNtSOjBfy6Z2Dmpf+
	 rNb9cTgh6P/xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9850F531DB
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177611685368.1798.4140570210595146952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ff5ce51de3762e74fffbfba2023ca4c35a157dab91ac11c859840bd616af56
Date: Mon, 13 Apr 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776116853
