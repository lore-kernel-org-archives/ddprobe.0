Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D654EB2C
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXfsb3qM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78EA4C433C8
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703149696;
	bh=eiApss8QEDmYgjIQJyZ71vdP01TuCDaQL64X4h6uEVI=;
	h=To:Subject:From:Date:From;
	b=VXfsb3qMjQupZIqAj74kos6bGewvkiuC+86I6VtrbYE48P6E0s6PQiCVe3l1UDrM0
	 nkZ3xf4WAbc/N5xPL1Hwu+uNxgjzckDc41BCT70HlYCfjJhQLFiQK8OXyu5matuXZU
	 V7qu2QZgtm9fC/tae94CWe7h0tw1pjIK0YSjOY76SL9EUCb5xEwAogdpWjQBtmdZ5Y
	 7kJDvZqpWeg85zMnapyG/xmZVc8zbKJyn3y3JP0Kf4UEkaoVCQqbqTZOlgqyntpZ/H
	 2LxKijliZuUOw9efoGQ5Nzrm5r/8m6SYKgFQ0ZLlGCsT39w/zf/IzvyJwGEM37IvVe
	 QcPX4kRDzgKNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61216C35274
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170314969639.3337.7037198055041433697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5107cdd8309d072f9b3499e2757d5dde556d5e0d277e94a8e01e742aba7d647
Date: Thu, 21 Dec 2023 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703149696
