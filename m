Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BE7A213E81
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738682754; cv=none; b=OsoUEXS1XEFOu8BLRCfi2QbtM25R+LzHINBySsUy7gWM4ACKbPXuXmZtAzlW1J/SlDdV4BxbX/qS59REh8HA5mJN0sC6V6vy1aly3zl48lLEDw6+fxbGKepQOpT+YClKRe5oePu6/m5d1WFATVO6Q4bpZS/7KN6p46/M5qpyu/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738682754; c=relaxed/simple;
	bh=qNgbK4DHixdvQ1Kd6e4kkFm79xmxMn1SI17v2+WIanI=;
	h=To:Subject:From:Message-Id:Date; b=YG97uMR9/uQdGsuRsUsSJ6PJKEhw9pNsZtOC58Q5unEzo/fZd35wKr4Hq/SvH/7BmsyPMcfk30klRVxdz9QKGzPWVLqD1J3AdrwmVgIgdOdcmEtsvpBqqXT7SKwYtd43ygfYwJiuR5Lc6wQa47FxHX1+ADZEoFFyk/xQzv88saY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQipL8eR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQipL8eR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C955AC4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738682753;
	bh=qNgbK4DHixdvQ1Kd6e4kkFm79xmxMn1SI17v2+WIanI=;
	h=To:Subject:From:Date:From;
	b=mQipL8eRpLHjYOa7ffYHN6D4DxZ6JNYQyDlNop4yTDAuaDiGX4WyA2+equlJ7R1XD
	 CGbb00hI65VEOrMux7WUiUhMxC8gQUUsYsoJ17SyuDZrivyQAz4boKQV/cG+qbSy+Y
	 y7dlHjuIglKYxPKKBv90jrwF4DCxq73UgvD2h1Tncswk+NJEGpo/C2T79Oa8QYjxAK
	 ccUvRvzs0/cVP3qh5BTF/mLqvLnckD84ALo3FV4JLxahL5Ow4VTWGcqEU5+nCKfKMz
	 hH34mvPngcPJNS6cGp5qmSrUra4g/772t6Jo/OUYaMh7bdNdPyQNHov2+fCFJzXkve
	 xKPHrsjsNxavA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10ECC02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173868275371.11251.11784775278381578441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 881a25c1275d1efb9dc01481df98a711cc8eacf7d132db64478f4213364ce84e
Date: Tue, 04 Feb 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738682753
