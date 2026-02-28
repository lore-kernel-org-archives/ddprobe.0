Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13EE276050
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772270693; cv=none; b=SWn+SI3ZtJX0A9G+IPfKUQO7muvkmo5x+uyAfj0bAzA9/Z5BPwliQXnr3F1W7J/LzoSbX1m9IXeB7IFYikRNGeG9ZV3MNny5TF0FaHnrCD9h6kwZhnMR1GORBWm7AZMxRK94nMEUtR0T08aumN06cWGzb+OmKV5bcbDcJJDM5bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772270693; c=relaxed/simple;
	bh=QW0ypb0OeLX319/HHOHQsgV7blH1Vp908idC9rVQcd8=;
	h=To:Subject:From:Message-Id:Date; b=LJ8jS/clCGohpxPXBKuu62+xYgSzl2nN52N4c+qxM4Aa9zFsjtNjaFHcmmZoPpo1GYkr9DUs9PYwnCJLVzSbUEPkKD/lww6e33EAVgECmRAPpAzTft0Qr8eQaYxdFaG6xLkgHS9SFzkvKH7wbraTsSq/JXcgH1kpLAkXsQmUbtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsG+x9Sg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsG+x9Sg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1468C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772270693;
	bh=QW0ypb0OeLX319/HHOHQsgV7blH1Vp908idC9rVQcd8=;
	h=To:Subject:From:Date:From;
	b=CsG+x9Sg9s85jfJfy9pLCHLSPHAGAs6mWfsdLbiwbqzlMhIrvQlFni0pSNHiCjNEA
	 9nXJi3eIziIRlbiWpDH0VuOOvVTpre0x3wF6den1z2KEgTefrQ3HkgQkwf6bljFwC4
	 nuZeOo1UBHVypQNISGCnwHak2I6pEfwRN0cdoGHj9Da1/ATElLHu6njAgu4JjwX1Ck
	 CtpE0J127BYkvbhhac18WevLlbOKio5P4eKrDORDSOTo0+coMQpXUdaXLEvuyFmx4h
	 Xo36oWLfdHLYhzmgElgXJxBd9jSledcmJHdRSRFqIOa2qW0BVf85+bfB82aZm+SIsk
	 1apU3QFJ17mxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEC3FEE4DF
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177227069357.20283.1151126059656294743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 576de8b714f63f76a58eed347b279ba12ee49fd8dd77e993ff26f4c5884b51e5
Date: Sat, 28 Feb 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772270693
