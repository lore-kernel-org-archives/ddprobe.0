Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539D0218EBA
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748623794; cv=none; b=CMa7YlaPS8FBsbIOeg5UVrmGYb0f2n0j3jR/rFcOMnBzrfaJJePWmLq+OeVLK29KNB3W24Bl8wwgzU1zr+wq+5cNevfchKDP0paJmf5Hp7FFamruc99lA4Hk6Uu3xAtieV5rd7CSrVrTORLQ9YE8s86YOn4fiz2UBw428OP5Ogw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748623794; c=relaxed/simple;
	bh=moHWGXlLBsX93ZC4pXLEkCAGFtHPYjQjMp61wcnMdcQ=;
	h=To:Subject:From:Message-Id:Date; b=UuGdsN5wOFAONwcf0+kH6eSWz+yffjsrwlzNPyIITShp8kyvpa5H0UebHr0rPZnYb3hhNsIcLmLDYvgDIouJxc0DS2Q19pAxIvMh6xNEcFBH6sxq0OuEp5aK0esP7VcUpKEffT/K2qVxCQTRgYdkhOvM0QiIeS8UlWNPL5gBWZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KT71Hc0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KT71Hc0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E84C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748623793;
	bh=moHWGXlLBsX93ZC4pXLEkCAGFtHPYjQjMp61wcnMdcQ=;
	h=To:Subject:From:Date:From;
	b=KT71Hc0i5ZkDGM/0hCARzzfKJ9dH45M2npvUYGqE+i5UhAhwzz3v0K6kWSOkF2BZz
	 4yBM9ZJPni6S29mcAyctnHVaIY+HTDC7Pzqs8T84uwHOQ7aGcPFDm/F/STsaYPkK4J
	 gBo+38vLhQLyx4qX1qJdek+DC7XDdBMkZggQtaEoFQn2K0B2BKRCPCl2HrIHGhNej8
	 dxFTlFP+j7P33RWWlXtGKhJffM1pAHX3cmNpyAyJa1OC9B3vceBmZiq9gJevkbswyT
	 NDI75b3PvVtO1gdg4uYIrAd4tC+stYV/xLZOdcRADfcgiDifZnhWQbSYZxqbcYGfBM
	 KtdrkhgyngMNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4F9C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174862379357.19073.4882200320069171727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61e08bcdf31ebd066293747c1316cfc66c4baf9a830db04fe88779085105ab83
Date: Fri, 30 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748623793
