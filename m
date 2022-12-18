Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCE187E6
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80891C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671368487;
	bh=8Al3epwHN9pDrC7l8WyU3jZhzpFDuwwGrbuMjrRyst4=;
	h=To:Subject:From:Date:From;
	b=FpUD/GtOYri27lFkkcP69iABuHODcjuj2jE9bA/DfzRZ3C/3PD/61xK4duGnBvK1N
	 5HNu4U+2BK6wq5pdUdNAUYbdpBSnuhNuscKslHmkYsY2CLRTTjeQBuFyyZEbvQIhGD
	 JzY+REDyABr9Oy4TKpTzfpxgMU8KaL99LtVLcGp7kHE88Gvc6MqObvv3vAdNb1iyqX
	 jfgNAUSM4hVQOTELwR4RpOrACQ5OOzU2WhFxFwlYcvlUrF8WyyfGFaNjvMXCzTAsbM
	 5cBAzvVsgOINMp4h0T71tNuaLjqnuk+z3o7efc6g3esZwTvzVdW3cO4B5V3ADb+k0p
	 FPlsBxQSGHPvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6722DC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167136848741.17240.10266036027499244768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 722290b1f40fe262aee6a15288ba908e2e458078a9dfd90844954cbffa92cf56
Date: Sun, 18 Dec 2022 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671368487
