Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326AB165F13
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754329794; cv=none; b=LPcsLs/he3fHxmLCHlDy7WWDqKu7BXmJ6jXTaSjXKss3MgNqMQDOBBlD88YLt3w8kbDi0VvFdoRSY7yMFYRc5vz9IpzCtVkULEvmS2yuAXWlIxx4ER8Ko4dFYmTBiu8I9zJauqg94okCeKJft0SOyc3ZqLqjF3j2nc7QcaZGqcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754329794; c=relaxed/simple;
	bh=qbHJsme2gJ1ysN4/bITtpRu1NINpb26Osc8U3ocRsds=;
	h=To:Subject:From:Message-Id:Date; b=HJ/ttgd6IWevldCMix86OXeC6QuIgIfqIK2HBytFDFCwuPv/Lm7aRvTCM+rb43u+eXwZkRv/R9ptxdZ+P9mjU96PAsdyUhMrsdeAH1kWOviPAdrl5VsJ0t25jTf+iUVSt6TtRsX7VoyjhJPlDCvQSxY4UMsLh2fED8EjmnY7erw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzXkH2ui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzXkH2ui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8234C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754329793;
	bh=qbHJsme2gJ1ysN4/bITtpRu1NINpb26Osc8U3ocRsds=;
	h=To:Subject:From:Date:From;
	b=AzXkH2uipbcWdKolGPAZ9qANHsdmE0V8c4eT684IDr7q2+hDhVLk8Q5gl3bqTZX0/
	 +SRKQ6IMosuX6TRV50WCzogScdc0tSpoupcS4VoeBr6ab2RmNPZ9yR60IDGFljgltr
	 MuAZW0V+ntdh9XXDKeFKo5mVp5gfy8Z+5iOZwyuohVNxvf2RAVVwPJzMMaxCaxuBWm
	 HjvLzL5R0sPunhvxTrV7hkIsFlim3Ge20OWGYtSpMhIdMxD3wSmULF54qeGh2DHDxM
	 ciiZqTgXpbJB0g/JYidv+msrJbWO+dqebFVWKjPe5EaPy1jC4G9kVNPibFoEwBMiwV
	 tXKEgmUW7zrQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C0DC87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175432979357.4407.6977459910064736869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5efccf874535b7a7c37dfa84fe0e18e50a74f5e7be4620dacf3ffd90e59ac7e0
Date: Mon, 04 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754329793
