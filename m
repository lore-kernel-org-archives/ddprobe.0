Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC3ED30BBB0
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760368793; cv=none; b=YhyeWF7ZHgoEMDO/1tIBloDIwvPjfMO8vk0yRFBUgCy3bFWZhT1WVGysqL+3I2DQ5aUUKDm56B2H90NXu+vc3oQ3dJVwUKWuzDoVoARcteB+WcwhE+MzCFSJvda76Qp0EcGJwb3iMHyKgSjWtPNz14k0lNDh7wOSepIen7n8UHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760368793; c=relaxed/simple;
	bh=x32Lt9F7T0QXTr3stGoSvjVHaW9RQpsWuL7kBmv7mOw=;
	h=To:Subject:From:Message-Id:Date; b=HItUGf5AobOm5aZ3BwNUfbPLNPgR7gWrPmb8R1UbYZBe/H3YHkaAEJzahKAAcdkxqOur45t3mPDs904RezvktdXunPNmPwRBWBSfz9u2w6XWHav8PNUYs+kqdplo9bLgtEHpOuWYru0inPHu7ao92Grt/E5I3EK3FLb/KomElXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WM5+pZAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WM5+pZAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF19C116B1
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760368793;
	bh=x32Lt9F7T0QXTr3stGoSvjVHaW9RQpsWuL7kBmv7mOw=;
	h=To:Subject:From:Date:From;
	b=WM5+pZAulzaaeiwRiiSzFL6Bqwf8XGxnUsJySWBJcyUebJumbeu1eNH/8zJEqpFRV
	 l+p+t/kfi5g4hYRNG6fdUVr+t6afxPFOIdoVs5y+DRxZTT2vNWsc/gwrQX9f/yAoau
	 cnolLMloaAjdGaTZFvx5D1/oLEOt2Bk8QloVcIfsHtrFafxXM8KPlXI589bujha+8/
	 38CKI4WjWBIKAEaS/d1uvU2Vgoc1BnTCOst3LxWTj0ZDIZLp+4wMmv2nLEussyZceK
	 Q8rZuA328y9758I9XnkKCeFfiSO3FoXwspyZVuiG3M1jjoYVMYVlPTAcejLgeebV57
	 XPZ97tQ4Tk6JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E57FCCD18D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176036879357.7178.11114050975279308395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a44baa8697fbe7a9a4df2264d971ceb25fa95a3d126287030738499e887ad290
Date: Mon, 13 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760368793
