Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434E725B085
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786206034; cv=none; b=nf/+TsO3WxQsw8ncdfJNMcyQ2flRQ2OXNP5rBhXr16TAGzvbjp3+W7t4SSi/oLoelJDM0oCZ5tjXAPtxiU03yQFSbaVOO6RTZFNs/Qgl8xRhlwZRSdbewTDC1Rd49JEVVJP5vL1v9oSLhNoqf2wnbEPcELLD8Wzy2L24c2egC9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786206034; c=relaxed/simple;
	bh=WAYGfvIGsQVRaMLBilmNW31ALwSqAELQ8WYiuSLDzcg=;
	h=To:Subject:From:Message-Id:Date; b=t2Xn7G8mEebQ0nh+kPJdQ1Wb79h9XCkJyWTFY40pPh4nqDt2Ul3Aeb69BMN2ngouzhJOKFHmDiWvpFtgzY7iz/p14E2fRUi33Us8cA3PvE4n7N1gMdB2eVdzrmAkq5J3ya4vW9mVZDOwF65QoZWcDuBuFdhiVRTnkXcX+2GNqtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNtFvK6g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNtFvK6g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C6FC2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786206033;
	bh=WAYGfvIGsQVRaMLBilmNW31ALwSqAELQ8WYiuSLDzcg=;
	h=To:Subject:From:Date:From;
	b=sNtFvK6ggNuTdNXOuEu4s6P/uSvpfBnpixBeEUbWaI2jzHywrGpk29VKM15cFbVGs
	 CfOQFpVPFWBU2i5rRrl4HdTF+YYboZuaj8pmktCJHDiXjXhAM2iylese3jA0uGFEpa
	 RIZAOogx7kWwaS5ZFzhDSTbxm6OThTfMiFLvDnc8ZzxVQpORpAvIi8jcnHZ0f2sZkK
	 R4XeVnyrTtjzU7uSUDWhA5Bvqe+st/UyAWCFQOotila+dsIV+TwyJS6gWVV/GLVoBs
	 4NcXyP9h2Q5OQUh5GaTGuyPNCNI5HwfoLljh+mfiQH8QRob3LfgfoYH7Qw6BlmZnN8
	 siKUgYouMEQPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1BFC5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178620603369.2526.8074149751935525733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 278ccbae8b677689aac34d32ab98bd5ad5c4c055551bb90abb0006ee85166db0
Date: Sat, 08 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786206033
