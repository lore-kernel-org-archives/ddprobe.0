Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A04F1E8332
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775877454; cv=none; b=mUF/fe4mAbKtzmJKzz5C2Tj7IIV/Je64tknxBSoNDEPgOxBe/nhqMoK6X6tlwypMkl4VW0d5ru8JdARGkL91Ixqx70ZrwBxqIudRvSf7Uah8R1hSME6tApN/ZJiHjfceVUNvZKjcMspZz02ONg66+2ZPQkV9hY6LZ+8D+hSMsUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775877454; c=relaxed/simple;
	bh=Jb3V++7F6BG0Upha5wM1/waIj6hscSI2pbgyfLMUTpA=;
	h=To:Subject:From:Message-Id:Date; b=LVNluBlydWJbwuikN7bj8agNMD6Oa696uwv+37rSgh8mfmDZ8ukT7fL0meHo0egdf9TOvvSS4SsSumjzbe8OnkSnxBG/8jT3peMGOPWbqV8meXqwyAWJ1PYIrBmCCPgsg8OIwZmrQQ0MiF7ErSsfNzMKBD6IjNs55ZEQxaa24jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsB9XBW7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsB9XBW7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C283CC19421
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775877453;
	bh=Jb3V++7F6BG0Upha5wM1/waIj6hscSI2pbgyfLMUTpA=;
	h=To:Subject:From:Date:From;
	b=WsB9XBW7uVj7zIPU8Ga/4kBhxp0d+WkaG3SS1OY1WQlJx1oHH3P7zWMfLhpohxFTi
	 3Fm+BUOLLuP6NgM/tXlTQYJMQ+Hoy7H9m36wctqCQYLSGSsMuPGfJAFMW7OdyZA5Pj
	 5+bi9XsY+hCRLFiuphQ9zN3qeTZ+lSvviS31c42/UoQbC6/RmvP/yOBMzY06rcuLgh
	 HLkU4CiEQcVhvx9tLNRYydt8zWL0WTwhMj3JLnu9Yhdo8rJr8PfVqDME1qh0jM1QpQ
	 j9PF6Vnt1c++VLloSb3Nv/emrkRoKBWImB3X/HNd2zE5l2OVo/3VsN58bPVwJnhay3
	 MDKLuKVrzvtCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC51FF45A10
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177587745368.23451.12919252727975247506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b2c51d714779270edad6c3069edfc1d40eccb077f022ff78e784b2ecf794a5
Date: Sat, 11 Apr 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775877453
