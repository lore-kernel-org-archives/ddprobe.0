Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66AD815A9
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 05:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDFFBC433C7
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 05:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689658268;
	bh=G20u95HqMzE4dxETM5QqLr0ZRXSP7dJjMJFxL8b7598=;
	h=To:Subject:From:Date:From;
	b=Z73BGYGDT6aSelE/SzSZB0bLf+gP7BKCbVciZm5Sy3xusR5qMWyLu9E2kBBh/Fgdr
	 aWsnqEAI+2mGsinADPsPfnkImGfbT//AsCPRsWdgGvXRrEjb1YC8ytJTv5l7TjHKxH
	 8VPEeUVhwoT94wYKzujQ2GXmYfHW942n4j1xC7FQKSe5EiJWmCgCmaV+UEJdR0GiXP
	 kOxJkncG7s0RVglO+JzsVBps7tBRzZ5J/ccUhLOOt1zAQzkBipFi+NS+8mh1IGLrkq
	 hhP9J0Fb83UEBic7ObW2fnMaxfzJkQesivRHi9bkpX1yFIUrWd6ol5Fd8yyhtZ7iy1
	 Gc1ISgpo26NBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC962EB64DA
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 05:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168965826876.24872.10972082791882819407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96a122a4683e379150012bc7a96e2bccecbb64d05e93de242fa13e24294a7993
Date: Tue, 18 Jul 2023 05:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689658268
