Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A252939AD33
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786302634; cv=none; b=TwpwOlRSjquwrZU5qGptuZn0vogwiJmcr5B3Ednm78DrU7eEXgLSBaeh0AY/WRf/5tmyLVO6lFubfXBz4F3FA9ZWJlwwz/8OdQ0sFIyMKztP8s/RoeN1rM5gC90KtcejKnsGxa8r50/jGb9E4dQD1vVN3z8sWiD7dcGxgI0p60U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786302634; c=relaxed/simple;
	bh=RpMWL9RjmkruHpOllFqxhh8+UuCFRUTENKaQH0TNHF8=;
	h=To:Subject:From:Message-Id:Date; b=QAIIFkxN/VHDHcZbkQnFUkmlJClOX/WDx6+qNV/nzMbwM3+ORvJc6/fKvAKpXz6BWEmuCuH6Sa16PcJFBDRdy/IiZWKPEjYaPum50NsVR9zqljbZmQ7TqkqFV8l1kjMIpF4IWXiyJmtzPK1Uzd/RjP6HWa/AMG1vf4eqz44kvN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhvFJRnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhvFJRnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D446CC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786302633;
	bh=RpMWL9RjmkruHpOllFqxhh8+UuCFRUTENKaQH0TNHF8=;
	h=To:Subject:From:Date:From;
	b=PhvFJRnP4F9spdOyUCQ9jOQ2zQEPFohC1h+9CoK/ZK4/d4NkEUD41j5fkJmxNQVKw
	 xOxgJmkcv0zT015/5Ti5BpeS2l+qRKWjkpBfHhKxJsnMZ6Qow4uAbk/6wLQwtD/ruS
	 QWzT1M6TgAPMY21HcmRTrBcTm2JXIw4ry12tOcDsYkQMTRjQc9ywNOE2iLNS5H9Wlc
	 c8XB4sUFbl6VNi2nOEC/KBZFToCPE8kEqe579gyhj5BOxM6KTmykYNMFu1FHwo7l6W
	 3Wun5ydBXSIciqMYQT8Y8ZUEqPYQVkaCJgTvGK624whC/l1EdGYPJW+9IfjIxx6lVR
	 T2o7DqdRayrdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A2FC5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178630263371.24494.3700178174962455566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aab95c086bb04ab014a9782e01b6fc67b5fa16882d59265609b7b2ed84c49937
Date: Sun, 09 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786302633
