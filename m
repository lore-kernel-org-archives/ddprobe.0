Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8631939B960
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 12:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780145614; cv=none; b=UrYnk4hnIEHccEjkBTJBap/QyYp6tkdgpZOZp1aCG+sSnvS4tz2o0Ij1LwqmjZKwBKfiR+33vEky9hAytZv4MX/hADwBPGfLv0SHbOud/G1Ax1lJeAiMpOYKXgJ42bqYufyIPMzAm1oEKY5alwgNo7e87ZDZHfYpsapYNT1QAF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780145614; c=relaxed/simple;
	bh=tQNcci6lVwi+DkvUydJxWobwh1v5X1NZqh1d/Ta5neU=;
	h=To:Subject:From:Message-Id:Date; b=Hl2SBoKLbAmq6PhTtl9YgZNdm1mHEyNF8vIGxXL/MkW6sd+a/aC0cGHPQGTLih258uqnJfP1z4/ljmMaqcyk/lsg0W2Mv6dC6D1mmgdKY+QMh+AqcK5EXcY4aprP2hwUj5igd9kOo56qKz+gKTUCq6pbMh5e+6EUemGhYhQDfQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWrleDCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWrleDCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10FF6C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 12:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780145614;
	bh=tQNcci6lVwi+DkvUydJxWobwh1v5X1NZqh1d/Ta5neU=;
	h=To:Subject:From:Date:From;
	b=BWrleDCNCJXGmSBdGT/EpICJ6Gva3PesAV76+5Oi/tF2p6KKX7XYpFJyHb7Nycgm0
	 3MTHk28LY0G8eVdYakN4B0CwBIxLncvGWbgUn45RYEVLaBJeAbf6kuhgSvKNljrQs/
	 EgRYSnIdAtebJVRYNXGjxGQItLC9deqdQ+nUReFj6NZJxGStFP14AXjQ7EfzuB3kLM
	 75BT4qJG7j+mZqpLigR9geKatX7hxOjByNu50yeK7u5oJPRaIQh4S/045R0r/cxcIF
	 GJriGkfLuPFGmBIeZSHIrQaOKKB0OoSe8cRZVb0xyeZkdGj6poIc3BD20Suhk1TvJh
	 O2SD+ouCm32xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE970CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 12:53:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178014561382.30795.14300729920459401482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f627ebacc6679f5fe07cddc38fc5123c9c105f834012f21aa98174f756a982c0
Date: Sat, 30 May 2026 12:53:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780145613
