Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B89121C19B
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734716754; cv=none; b=djCp+Dg3qGEaI+RVe1Qh6KvW4bc4jq5rKbA5PosWTinPA0PiNexGm5kE8W6t4brIiKY49Pn6jZACzJreCJCmWKrNHKBnPSYA7yL5VFF5vwJu8yManDXMaLRvbwrKtLiEu3kQwUPBHZZRJ5px//AlH8fVtP14JRrqERZZsZakBIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734716754; c=relaxed/simple;
	bh=iiZHVnlGNIbT4ZstdioSn3qt+ZWDOs7MC5nIK9UaPUQ=;
	h=To:Subject:From:Message-Id:Date; b=GwOabXtw03Sxz2RKkMH8n5YBWTXm+fGmnwOJd1KCAXoVCITXC3W98hpsP1TSPOvIMY8Zm2eBimcQHXeisU2yX4yWCshMRiPh3zueSi9a2SJsJRabnbr6cDIyIvXDq7IuNK1yOqnuVnxJI5IE7FEw/sUv54lTP7pwohnyLefgafE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ef14sbEH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ef14sbEH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1BAC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734716753;
	bh=iiZHVnlGNIbT4ZstdioSn3qt+ZWDOs7MC5nIK9UaPUQ=;
	h=To:Subject:From:Date:From;
	b=ef14sbEHZLk5a8J8FFJU+N8ImgW54qqcCE5BZarWQhBI2f5sYlT/qjc7TVHKdO/Tc
	 0qWMoky8W2Yvi9Mw8EOGXgRscr37N2P8zOkNR1m+ujR9UHuBvMrBX4VhWwWYB2vBUD
	 n2n4bpYtakvA9NIGmty4po8TOyL+dGt1QhUPiPPvIMpEeMpCNkqzaiRB1daiqjJmLy
	 JJED2FvWW/gZHI7tuDHpYTJH6i3YCDlsSx0H7/4He3WKVhwWAWz32M8KaRVZ8MB/R1
	 tjSvxZFblft49Jk21QrfnQy3G7s3m5ej/EUe+9yj9WgQKwZe00qqPkVz04vKZSAsHG
	 OxJjid6bwvaDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9765EE7718B
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173471675360.21574.14093236622005308367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a763c858b136ad0af51eaab4d71d1fa256a057594c8f2da3e9fb1f1bb45d877
Date: Fri, 20 Dec 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734716753
