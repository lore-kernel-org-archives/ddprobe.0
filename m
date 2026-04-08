Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF87368942
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 07:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775632534; cv=none; b=dfbbjIMoyO/d+GD+tDA7lSqLS47VUA3aSNjo7T80VqP4rVn24dOQV3GFQ03J8AALT49pcP7upwTiboGHwXXJV6RaqFjP9yrt4EF6pPQ7Xpib6/DJWIhWpBIHYI/rbS/DyU5uit49EHxs4jlW2UWTMvhYYS81tPgicbxC/x7qEuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775632534; c=relaxed/simple;
	bh=xH9j6Ize0uCa2bQmj5XyvsjqhM2j3uxHIgF5cUr7lW4=;
	h=To:Subject:From:Message-Id:Date; b=dug2qJrPSEM8tPTcOzJSscT9XwmyAZFGLFjOk3rch69yEK0QCuBGTmpn923HbXwVm+bhg7zCycK7P62qSGLY/FyiIFV8sXZYiTg/dBtnss6FJCFRxijuMW9ffPCZEyqHKVjfv2dmueq+7FynWznB7Sh4MSJoy0Bg5pENjI9mWR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lS4DEvDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lS4DEvDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB27C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 07:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775632533;
	bh=xH9j6Ize0uCa2bQmj5XyvsjqhM2j3uxHIgF5cUr7lW4=;
	h=To:Subject:From:Date:From;
	b=lS4DEvDU9SEFtnTGWCqEC3QCTGp2MH6iRB6cPmyMVlZqLl6NrXNATSXEoJyjtqYFt
	 lOeD49ZPDGYmLxwxbWhGBXJN/2Wk+t34OFrcbsZoIJ/+4KJMLqQCCgZisrodFZkuwr
	 4oVSClHX7DblX/0YAhkqyzKVVF44p6egEYyeaO/UdRfsVgOq16nQ/FD/ST4xZ9azMv
	 BkMdLQS8KbvK1x2ZhzI9bMhM1ktlB1rdIHFl2PD0g3dPtcSXFY5JTxwfEiABvVgvD2
	 2V1POIRfyGPYCmwT+Ntm6LoYydQjIrVJEMXKlbkrZa+eQ6krdwrLzT2g+O29bWDF8u
	 mgqZhhrIPtVtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA453FD5F88
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 07:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177563253374.1999.13982210326669924150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6893c855b9bbe97accc9602fd8aa709648917f2ea73808b87b1ffa774b1cc315
Date: Wed, 08 Apr 2026 07:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775632533
