Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C251E1E16
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777605454; cv=none; b=OHStRqL54vsIYROfxQRXJuAZlC3bGrZuQ20rS27x556GJctjzEUsSviz14PTOAiP86aNMIuyIqQJ5TMXQypd/AZEIbwIictuqOgbUDPmBFUnzmEBTxHPof2O26+hjgd+40FneT4NnrNktHR2exwaa/SFfE9MQiLQ5c5V+KQ6tWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777605454; c=relaxed/simple;
	bh=R9vSx0tJSI/oJYFxFAJ8oWo3M/2JRY5opUZ6qbf7kTc=;
	h=To:Subject:From:Message-Id:Date; b=kGc7D/vTwKCRiEWRRNUGe9U9L/e9OyZXitoYRBWcBslPkJ9ECKBySrq/gyGUFB4uv7TjFq0RU9cgl7S02jtMgyedZoeyvoohesMUVXRYiYXnGNQ07FX1WeBQbV3/LJFk3vklHZJhEStvO4xBy9wDT9D4DaHNcuf1MDBGx4dMGAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rldcIeGe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rldcIeGe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F71C2BCB3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777605453;
	bh=R9vSx0tJSI/oJYFxFAJ8oWo3M/2JRY5opUZ6qbf7kTc=;
	h=To:Subject:From:Date:From;
	b=rldcIeGenyfrtxFsA3JG6EeaScnvf3DBPhaUH79tRc0eFUxfeSiROV+z9Wpl5xtsU
	 r1ZiS9bH+2w01f65D1f7QNIwmWxAci8RhuBzEuI8zkuWR8Ijivpqq/hO0VIQHPRnQQ
	 VE9wuD+FkXGafgNCMEaJZB7nrNphSPbO1MM+GboEg8Kd9uPVAbglcLqPBDbrkXb9lw
	 yOsvLMqp1ja1YCMDoBLh8dDoDx3UST7qzkKxgfdoxjSA5bEP8O/xGRNgFq3f7nA3ps
	 1RcB39tC/Ul4cMsVzbgwn/VjXNOAYqs1mJqUVn3LqxLLLhTL8Da8h2tpZH/FbiSBx0
	 OdcS4hnNzrC2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD49CFF886F
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177760545368.19147.6443257772258933185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10200c76524009852b64bef47cb19e067926adf960a60cba71ef2149faf948ed
Date: Fri, 01 May 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777605453
