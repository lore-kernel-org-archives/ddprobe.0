Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5963451CE
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773777294; cv=none; b=nZIfUPUHwGM1BRxnRcvG0S1Uoj/eB5Zc4J7oErnvkZTq8uHR3oy2PulPuMgXhRxSVMUjjg/SuQ5AZTEdXxJ9wGv7khOJ+03q1XbDbk57A1XgAQRnkV/PaBHtEK21mmqoNG7Od8Z0CCkNjJSmzfdkM+fWMCMGGxS+haOsIom/ZKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773777294; c=relaxed/simple;
	bh=ulN+jaCW1tG3xdlqie4qaPi7qCkuO+mlT8jSXDaiv8I=;
	h=To:Subject:From:Message-Id:Date; b=Cnmym6mqggXztVQfmvhxWpNSaXU+qhtqba+S11ZegXZAh78gFOFSlGzqTNo+jNOdGOy8vaNRSWzHIZj4HrzyNJqHbT81s44UzQn7SCZTBrl2EtRB3WS76D4p0oxMmA5M4Y/EEFgXgmmVgCM6kif92VoApAWvNxRwSh2BXedWZxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBALAN8b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBALAN8b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA161C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773777293;
	bh=ulN+jaCW1tG3xdlqie4qaPi7qCkuO+mlT8jSXDaiv8I=;
	h=To:Subject:From:Date:From;
	b=YBALAN8b9ZVTVls7g4tfXeltIQjFZnjpgKWQ4dQ2c7YMJGAMLiBv5JLnRmn0lAUhN
	 PtlxcXTVd+rOhHNJFOjXjvscQ3xgRYFjOgCeg9nuYoCzOSwJiHoHBDbre3auX9MQfX
	 Me9IF7hhQFx3Sr/CU7KFSAY15e0luEdH1LYkmRw49ftMCR9i9sCNYLdXIYLoi31GI+
	 mglJ+6z9/Kn6XsA7WzK3j8roKXKTKjHJ912zDtMD28Jt4eYM9qiIJn4NibNtLcTgft
	 7x0p1cBiXzXjIROxBal4VoyjNkb7fvaVr/Krw+1ZItJEPA4zERD6uAYOKo82hh/0gg
	 9O5+08dknOCug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93985FEDA0D
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177377729359.28398.18133437207405767133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c201e284b1699a1f468668ce62772a60584651104fd1964c8f150c6a699a6ff
Date: Tue, 17 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773777293
