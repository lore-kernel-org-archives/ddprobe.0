Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A87A5BAF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756541994; cv=none; b=sD00oMPEEqZzG0mWbD9/vYW/Jav/WgjtzaOTxmhgJ1D292zbW82i6Sy1slIxnftrbIp4r0020EaIy0huQzA8OjQRHI5cOxh/hKgkeBRzuDxRiMmvVNMT9ocWVoqcTuts1ZvTNF5UqsCEDxfeDVdXgjvWmkujg1oM+kBB1MS76Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756541994; c=relaxed/simple;
	bh=ZOOc3snIvsYejbzLKHe/3w0pC+3FKm1LMzk5LzORtSc=;
	h=To:Subject:From:Message-Id:Date; b=uOJAXfTB7oRlS6h0YdJl0iTGQWRbKiK7ryJ/kY69v5IGUjs9ACwICT6wqZSbC+5CWANuZ571kM8Up2o+6A5ehsfk73XTU8bloIwBKKFK8rtukHuJfOJ8MQjaZSLK4k1T76V7R6hO6mjUst8HecBZdG9/v9/qweXLmUqQofhBLP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wg4JPB6Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wg4JPB6Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E658C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756541993;
	bh=ZOOc3snIvsYejbzLKHe/3w0pC+3FKm1LMzk5LzORtSc=;
	h=To:Subject:From:Date:From;
	b=Wg4JPB6ZiPdSoI5GI1/eaAE4Z1+kAV5fEFKoZ7oHO2A9Lxwv+k32L9p4S6HL8Q+fP
	 wx3TXJmKd/6BAGoitWO5+DyqnMH1wyW8di54ZRm5J0dHwQsJYuozuOJnWWEsSMls3W
	 941DSN00Ns8DBEXpWFHBooM4hFvaqrip+AZzaaTMeE4hTeqUWs5Ty9HuPkQRzsnf0M
	 t2ok0lKw9GiFSX7eDoppJYVbu1uYZiA7m28N//em/ajPefJm7R2R4EYsUad28NyQyo
	 Qe+82Tyyh8EoEiQF2OEWoXQ0Q+Z0Ta7+qZRQwufqcA7j52RoXLn0mjrXwzMRtML3KB
	 IOL/BRTkT6jLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F514CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175654199358.23117.7395348863407114769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43e904e2e774ebb1689be31efd8700b1ace3eb97e4929057fe88002b16cf053
Date: Sat, 30 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756541993
