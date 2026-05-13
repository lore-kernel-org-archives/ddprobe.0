Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3361F44CAD0
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 16:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778690434; cv=none; b=aO33FSCnIMXpW3d90MMnBCyY6IW00jK8c+LoN9Qqf7glGmrKIVO/mv7pFGeFJo4WTwEiwWQEAU8tZNKPF2Yrhg70gWp0AN05DffQZW8i4q/BV+fExptPO0xHryTaN/0RdoYu3ILZNAfapk6a1TavyxMMyeUaaB7Dvt7Il7DWwuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778690434; c=relaxed/simple;
	bh=wbmqde263nEFK8RJtGA77ea4LFVgcxPkV8ZhGuCmLYY=;
	h=To:Subject:From:Message-Id:Date; b=r6SOC7fCbj87U3Z1kBh5yye5BQQ2kA4lwzHXK0Zko+u/sTXG2N1a2fED2sr+j2gmvV961r+wKreGqoOauCez+mjkS8mUrfdcgECfYPz+NEorXl90m/4G8DNwAQHCBPqtFqJlSqymdvVxaDFD6LSh1PFcEMxyGF0Ip0Fh5E01WLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wg28qVvg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wg28qVvg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD206C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778690433;
	bh=wbmqde263nEFK8RJtGA77ea4LFVgcxPkV8ZhGuCmLYY=;
	h=To:Subject:From:Date:From;
	b=Wg28qVvg13ZayH4k73XQ6q6pfPvzM7PJwpdhEBe0gZ8Ej5g1O+hwkHtrrt3IyYjl9
	 1Qe4tADIP1Inttk8Og7UI5jafik6qTvi6f9/6v2g6OfzuJ6ofYi7zvUHfOPe3gLQl1
	 YbhLtdOQPdhNcsm6VQylcUc/lv2MclI2bESEYmLpYQL06/zmkcGzbYsMjjEUJ8tQK0
	 sQY+KTiVrPJQLxKrObUiqIaVzkMJ8WNL8SvQOYBEvq2md/DsqqDfKDy6j90Ewam/Gh
	 gO3PF9lg7tON0tHAmhN1G1kyVDCZWNutCuqWLLrqYCspl5CmKJ0Hea+B1/mqFbO6iZ
	 wbYNKWMbwoN+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1DACD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177869043369.29883.5976049599576687740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed30d9d509e53500cdf4e2b0b88b3a3dc757fbeb26a07d93a95e2bea2b537b55
Date: Wed, 13 May 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778690433
