Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3944434EF05
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 22:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779490354; cv=none; b=j7qMExnzBqCBIDlwA4IcBamskYXZFNUl35furdPlwOCEqPFqIe6VMPwha2cdttvDK3znlwZ4f/IGAYts/sM3Yald2D+tv0aWQ0BTqF3ovElFnK/4nLuOt6n5LMMQwvOP5IFGIyVP43UIvJEAccsYtJeVwUX20F2JY/UCGAagumU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779490354; c=relaxed/simple;
	bh=A6smSdIKqC1kfN0I2mQhu0FDGRgI6LyyaQmCXCIBb+U=;
	h=To:Subject:From:Message-Id:Date; b=E2bBHbigmfTSIPmb6TiMl9MHoAke+F23GYPUpb/eAqKmuNTxp8o0AZq0wMrJ/T4/Ewmq/3QH/YnRxqsVnQlnrcns15ARqzph+9R/O5OTVHqpg8boutB+gu+y05HbIX7pXwhVaeegHJb7Vj8rxdTdUj7UTzkpS4BPip1ryjjE7lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAKk+0/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAKk+0/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C69C5C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 22:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779490353;
	bh=A6smSdIKqC1kfN0I2mQhu0FDGRgI6LyyaQmCXCIBb+U=;
	h=To:Subject:From:Date:From;
	b=CAKk+0/rL55bDtE+cObKd36AhFCigfaieKTwmMWw8Whcc0hMw5x/CNyUFCRYmhofI
	 u+v21E45oENooyysPsJu7zqRLqUDWJXZ1IWFfL1ajd6VlWGiauEtVgppmtZmMS3X1B
	 eiJPtCfPr9c53xr0FdYQnR/9ARBmWAMv2rsEu8Ekk05tqbIBAc3ZA0mMdg+rjkd1D9
	 QlE0cYzTRTw7nA1I96FMD1FBY3q5j3TLMXMRIuapKptdnnMWwFa+VNxj5VoklXXm+D
	 ECbAys0R6iPSfB2ghaCElfm2fVoMWWKMqLVHJjB2ufxlw6ilzEG0IoG2ULqBUmTwZe
	 rQXCZYGe8UpVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD70DCD5BB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 22:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177949035370.29260.9456052960902658879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a32d3e89df0d71b1fb1f5c12ceebf716a8c24d3f86b6f8650edf7cb8c49cfce
Date: Fri, 22 May 2026 22:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779490353
