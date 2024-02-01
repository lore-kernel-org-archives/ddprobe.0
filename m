Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02B603FB2A
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706825897; cv=none; b=c7qfJUu2OfY7sHZ/NWNE4UmOg3loPbKKxCjXTQuchEFlBuKO3OpnJ8hyBowCFa6xctt0iKXP05KrTJq0wiAC8RRbxwvHAdjv9K5jomVYZ/y1255jFKrDhS1WSNF6xLZfmniBUowRXkHKvh6VcGeUx/cehp5rAtI4rGqP4bmCXsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706825897; c=relaxed/simple;
	bh=WtFba4y/0/pdWRxChbO7fFFU6Kb2f+AkrgtK7bbIiFs=;
	h=To:Subject:From:Message-Id:Date; b=INcCqpQ3iSBjFT9K+cI1TF75yDC1YlMSZ8zSWnUK3wS3rJyDqnf+YDm1v2zuKU1oLgzZ/tsCuPEEe0IWbBfaB/2NjJIvmHfDJW9zg4YDwYeVkFhHR82zIH/YcAIFa6KyELlcCsQEd0X5CEHP7wrd/1bTsCXDJITvLu2/Pm8yd7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqnezPHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqnezPHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78865C433C7
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706825896;
	bh=WtFba4y/0/pdWRxChbO7fFFU6Kb2f+AkrgtK7bbIiFs=;
	h=To:Subject:From:Date:From;
	b=oqnezPHbcjWMTh+/73Byl1fDoK6kffgZRcKobd2imS8mMY66l1+L3LaMs47Sbu+J1
	 wjRPtG/WAc6FwSPPxwPDdyDBuDQpDP2gmnFQZbh928IBv5t1lC9fNVbem+2d1sfs3V
	 BDh4j76jB8vJQAF1Kb5FuF1K72L34ZPMIIvx02JlCpj93Rlbd/KdaSw0yR6YU49qMi
	 Kvnjd+KZm26uzxH0Bx7wK/N5yTVXvXFfDXKffBa2EC3CfUpn6puJDGcisyWDTSW4ZG
	 qP7iH2CAhNvAbaXQvcEC+Hx3H9pij8MXE8ImTqAQDXpZ8jMcOkHGbSc6iJ0zZfdoB2
	 P82VH3Uauy9Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6012BC4828D
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170682589638.19418.1156284023160484386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 113528f9dfcbb0b3ab666855754d6b432957e8c7476978f451dce5fdd30afd16
Date: Thu, 01 Feb 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706825896
