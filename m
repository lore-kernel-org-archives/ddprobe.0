Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FCB77F39
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771714494; cv=none; b=TwjbmMXlrWdiO8RaUXGNGwvGNSn2rdxAyYFJBtvf9pZneAdi3z0DFn7EvWAHwKLBJh2JqLqVVg362TAN7WG1TDYfEzURSp5WZ1GRBu67XbA9emOxUJ94ioGBGYxkU93o1C4BGgvvyGFA0QO8W24/wyF1UYxDdufJ95MHAb2mSQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771714494; c=relaxed/simple;
	bh=y68AGTwA8BkfuCVZ7y0RJepPNs0xtp1wFDfnPAKdkKQ=;
	h=To:Subject:From:Message-Id:Date; b=sRoSzMTI+IH5zMLscYXbNSjw56v0IbrANY0aT37M6eGWux5aIUaNpriTsbAiEux/8hUutjGtCh6d2S6W5CYyr9lAGGRnfWLiRfNrMBuSvqSGgExTX+vIyGIJiAlHhebUTeNykKiY9mHYKsZDRz/0ZMym96Ud74QsGiJOEHPzJh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2/n0cgt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2/n0cgt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD68AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771714493;
	bh=y68AGTwA8BkfuCVZ7y0RJepPNs0xtp1wFDfnPAKdkKQ=;
	h=To:Subject:From:Date:From;
	b=j2/n0cgthf1VEnohq3ZaNRuxfXPoG9919QbKFs9rYYUaWOSvmalpSK6MGa0w0TS7O
	 Xh5ZnuJXgoTXL7uBQfCg2MRkLHzLnZyKYC/DPfZvLMSoIpcXhamtFg5awVJOMKt9K5
	 Lm14W0agibLw4fPvTlbVAYCUznt3gnApUBHMawYFGbltQSCTquJ1NttX2z+pREF3EO
	 meO/o+P2rKt/C7OOtLwxb7fn36R3a7/36DXmli0fuja9SftYCzvkCHe72A0NyieY9h
	 1GkVSwkYmcvt6v7Be6MfwaDNQYjUKaTaGhXWatW+oNL8NhnpwGGoJVte77l+7KIxgV
	 wI+ccN//ylBtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAE8C624A0
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177171449360.2547.8790092191038708601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 934e9fe5ea4d5bf1f383d2528ab061d69f8f4c35098a182b1cb5fdc450be3f6e
Date: Sat, 21 Feb 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771714493
