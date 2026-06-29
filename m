Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419F914A8B
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 00:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782693514; cv=none; b=Twi7TzByaEswvSrjMsvBw5O2hsMLRvLWXt+p/Ik/AWOPc9h11hHqweub9tBHcD1zgEnKxqscxfjzXqMxkSJOUIYPyBVI6zoMFC0y4bl3gWJ+hFj7ESdGTJ4Wj94WuNXB5MGnc7IYcrtoJg7imPOtk9+nht1cGDEY9wMdn3Ub5Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782693514; c=relaxed/simple;
	bh=gqrtoxTE3luOzPhywtO1OckjWjUA9qMPvZ+F6rqVh1E=;
	h=To:Subject:From:Message-Id:Date; b=RLsVhDMQtZLkaxc4m/OMvkzRzN0U+9Uch4MZOuc3uviMzFUNqOXqnfGz8g9KAW51UOXpZVXkT3LmF/iA2FPebLFJmeOYk5ndbLLv95PUSs01L2HtSv6TBS3U6552ohrHwbfmg1v3wUfE3ei/Y04xveLi2F+hre+F91YIM25uo3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLJCiXJM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLJCiXJM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7ED8C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782693513;
	bh=gqrtoxTE3luOzPhywtO1OckjWjUA9qMPvZ+F6rqVh1E=;
	h=To:Subject:From:Date:From;
	b=ZLJCiXJMnn89Stk9gAXaJc9r46bPP7iE547yS4T6bgIyC6/Iw4OM6Il4j5vHdaRzU
	 +90yrtsMzJitQd+NEMs4Iv4I08F07geBrOAIaO7ZvnA0YOv2uAZrWoy/dHcnXmHcfA
	 2WinuH7aHtKn3Ey6lgSWiU0GiG9+6CT3qin6oVjMHVoqw38YbRau0a5hTwguERZL5O
	 ombPQ1mJmdRoCH4JeS2q9QmSUKYScEcJ3CWLF+p+vlftcUnF8DhNOQJ8/J4G3Iyto/
	 L4LgsPw9y4Fj3ysz5V4vENu54/00sGlKGhu3GYOanpcRLQ8+Gt2voYdW8i6LAzpWUV
	 6BejDxOtPyO7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BA1C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178269351368.22733.14351033645039770719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 990a454db8217b816ca152d560eb96f6eba8efd952729ea25732852e29e9e1bb
Date: Mon, 29 Jun 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782693513
