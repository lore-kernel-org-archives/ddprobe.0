Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCBB1CFAD
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711705697; cv=none; b=dQv7JGG4+Zi8m49mAawHlX25bC/NFQaamFrchAMBgmpMD5P1vGDyFJfWLA6fFVN+L7u938A1IjwFTqwQNMxfsA8WDexL1ENm3M8Noo5z32aLnu7/vBq3TSWICqsTy/qvoFlTLZa+LaHocwce/Q9tG0Ljrzlh36hX3mwQUviHoUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711705697; c=relaxed/simple;
	bh=e9KRpJVAUaCTgyrKqAAZzrIVhqFG17d/U2OvLO7Js1g=;
	h=To:Subject:From:Message-Id:Date; b=aQ9YIZboRhPPsnCkbN/Jv7NwO6zoFHHdFw3WrvGNKpXaScaK7t7EmkoMZRmaYAtBvCFoqCc30EmqOlPw9OZtuLIxhChvjpoduCHM+5v+5neccumY+hvQJ1W7GELh6Z2hotM/s8K+mUFGuhF+GaAp+/s7KEBwChyYEiByioo7JIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTYZ4RZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTYZ4RZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 920E4C433F1
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711705696;
	bh=e9KRpJVAUaCTgyrKqAAZzrIVhqFG17d/U2OvLO7Js1g=;
	h=To:Subject:From:Date:From;
	b=nTYZ4RZnx5SyS+W+/3sG3dCBCNRcfkWI5oYCNOdt4wlffy1IvSlcGdTPpcVl4e4Z2
	 tYYvi/UQwPRAWc2loLDx3uNFgouGHrOSC1+vsJQysFiqpLWbLitPDIB3lCtqihArOP
	 Y32Kt2Ns9rH4GqBgKuHLLNB0T7R9CBwUADqsYaC6X3k3I6uMB3rzSQdJqxqLS7FdPm
	 syNrVL/yGxJyPGTXmtUptK50TPJZJIk+p3iAfikPFiEHNeAmkqd2VZ90dYG97HjjNY
	 sh1zpFIRe79ySIVO51lsieMQf+7VeCUgREyglf1yncJ/mHJ+msbd2u/fbM9yuJNd9V
	 eejuqsbp9nf7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 799CCC6FD1F
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171170569646.13287.10415044993619926880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb0f5d0cd0f1fe1fc2b6bde1ceb4619440ac563d8ed04ce311f3a1df55bc3325
Date: Fri, 29 Mar 2024 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711705696
