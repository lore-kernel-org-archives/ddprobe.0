Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37F6DF58
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747871993; cv=none; b=LONZJdD5iExmHoUAcoIKoF0iq4OXqHOUl+vSEe4sqUqaQCU7GoNjzVK5CCUTlhvH5RBrrkTqxzTqB7QGdBQf1rg0EIQaQ1XHagOcvXMkSIQ8qSspJlOYEo8fn50yfQc49CvhXO9J5aGWiG1Wx3Mj8Jq2dXhr+7SzgmRL7/4Vf70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747871993; c=relaxed/simple;
	bh=oYJ1y2woz5fLSFBkNPkL3s67x9QE0RPhUUYlqZLpK3g=;
	h=To:Subject:From:Message-Id:Date; b=SkAeRimwBM/o6PVQeglv7jNlxye4iCYYzAIztH2UdXUHsm7u3vAN6PbbFhiTnB4ouSHq2z43ig+MrhCbZXA3Xc6ghPG6a0a4aNBo2prrgF5DePbMrRY+fwvQJaSuXqtbyfwX4Wokz7w7aI+zMFBhhIBMSrpoHZgerLhIe5+J88c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwlLIfgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwlLIfgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9975C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747871993;
	bh=oYJ1y2woz5fLSFBkNPkL3s67x9QE0RPhUUYlqZLpK3g=;
	h=To:Subject:From:Date:From;
	b=XwlLIfgLOTjuby7Baea83m56Np/aLkPxkZKavi0S77bhgY8xyFeQVCrm3z4IbvOkf
	 tJoqbxkU5rRxztJCIXGqGLsUrsvJBMSJt2IcWCdm2PLZY5gHrDJT7pch6aps31+HPK
	 NCilkfnbF5gIO+fzs4HGonyVQYjY0ekNCV5g4rE4kajaEE+/MCXtatgF6Mbux9rZGE
	 +oDfKAcdRa77q0/W11EJNIeGGH6aT9MUCcg2uUDOmEZ2V2WAnBUy7V6GzrZeW3kB0T
	 auIyKoFWUtWIdjw5Ow7L5MUnl5HSRCPRofqAjeS2IHc3gBs5BlyaTBzuldMmUELK1F
	 AZkqgXt/aDAaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94564C54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174787199357.9729.16302517963707516873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b0b807ffbed21659bcfd748383a750661061160788e3c9f243ff76b6401645
Date: Wed, 21 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747871993
