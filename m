Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB1C19E7F7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771768494; cv=none; b=GlbnzPNCxwnh3WU12HXKSK4vw5PmNI9YJJYNvsL4j9C4+Z+DQ5zvXXuqr8VUIUo9S+cBYwEabe+fTQ2cALOMbSZFVulJHArOa2eiVQTUjyrN3EsS2G8eiOSVUUuOM9BscLFMJ7+sVtwgSKsRdiwy/0am/IIz8//ePN+XfdrPSYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771768494; c=relaxed/simple;
	bh=S+fLAJ6V1HA407xA1D8OJefBNuk8aDfSMvS6Ep+3LSU=;
	h=To:Subject:From:Message-Id:Date; b=bu0Ltr19HTyieQ8w07MIP1kfjOKGuwhzs1ge1zpmgeSsmMO0v4tC+gLGOJXFgXClLWFWwtxREFO6EFn4Noo9GRwZvzQtkJlrLTMdsF6ke9i4yB1dJWrSwTgOAMSL+nvAeswKgDAmB+/lVRUAoIhK0P1mPiMn4okcli541JTrN2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMl4gh/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMl4gh/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32CCC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771768493;
	bh=S+fLAJ6V1HA407xA1D8OJefBNuk8aDfSMvS6Ep+3LSU=;
	h=To:Subject:From:Date:From;
	b=LMl4gh/0V8TRr6UwkZqslfxyJtksZo8u4AtTT+DZWAYm0o9p8hHT1PFLtX4ka8tDs
	 jiyQxXIhoCZQfr/rpwGSmsSMhQBQSMnkgRnZdRfAMN6zSqRVZIE+3sqc2E+0uM0lw8
	 THd6OEu9L9UvujwzTQmqV3ZHLFZXTCEeeCeRVO/AzIijP0vDr8d1u7RLMFdGDGfBYc
	 //ghdPFibQHVnr/VP61UxMN+Gr3kL/GuYILetvMZXaS+FZRwhjmx7awppFA3O9ZmT4
	 PWuJ7nHVGdr6xK/Al9W9ew0awlAu+QQTNTv2z5qrU9XB1BRfMrmu8CC6gE1dOI6/cS
	 xX1mf23ztZlLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973F7C636A1
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177176849358.6500.7868666640840271216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d617d887e45219bf1251d57f0242febc1726cd410e2f9dc50ee6aaaacc235ac7
Date: Sun, 22 Feb 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771768493
