Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1975027456
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773718494; cv=none; b=PwfiDCkxCfh96TvQAX0JfaHMyoXvKQNL6Je0J10SYUMnyDTc8D9K5CTrXO4a0QZZPOF9cWGqEp2QkvYd+B/+JPEx2jJVytpdFQJbpQ15b5snUCn8VHFxihWrj4mdAHLLt5XaYyhsZLcaRhADLvWODRU9a8lJwNgoeZ92B4Df1g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773718494; c=relaxed/simple;
	bh=eTDDsYOCeRXhvLGtGkO1e4BpitCOzcsSgxIBCtFtSJA=;
	h=To:Subject:From:Message-Id:Date; b=Irr6Q65sudfkqMPTgOkvV6vGcNGWvYc/05g6rqMcdQrmGsLhFiCKtfjec9eiLBiQQQe0t1RETZoczkFT8EeSv4vDmFFOigsljN/PnfI9NkKrCtDxQk13d5B3dJp5h2b3Zd0RJdA+GpyeKzDKENl4BJ1vD0DAbj85vFuh79kMAWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUsvqpfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUsvqpfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C2EC19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773718493;
	bh=eTDDsYOCeRXhvLGtGkO1e4BpitCOzcsSgxIBCtFtSJA=;
	h=To:Subject:From:Date:From;
	b=sUsvqpfz7TLxjCt1J9UOglt68dJFX7umNc17AgOiVVYp5+xyZ9JW3u66RPn7XwXHv
	 olOk39Ql6GteZD1CIfXrQ6K11gYtOqkhYpurUgytn23FwyFBm7KF7gmP0c+F7F6XWF
	 OdcaMiGHzB5JcQXkEqUYYDYEwQsWUF/hEKzgU0bDpMZxEzX7d3QLAdX7/5ogFFlIq+
	 vp9L5I9gzkSJa1VMYLRfIwXF7ewk/HL6Pz9E07xs/dMacMISspmHmPFQ7DUjhgEwa+
	 L1D3bCqSTXJCuHaKQdfy9eaK/K1dxkL+rp9vK4tEQ17fc4KoBrczkRzXGvBqsaTar1
	 p3RFbIfmbWaFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F23FFB5EA5
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177371849357.22969.5061654650347727538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99385f2614e92b31e08e2aa22aa48b594e1bd41ab176685f0dbb3443f6d31c63
Date: Tue, 17 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773718493
