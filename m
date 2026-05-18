Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237DE37F010
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 15:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779118234; cv=none; b=StQ6Tf6adulBXLI9G3WaAd6XtAxrqjHX0VAeEfrGDqBlpuf4pNn1vZjlQBq0i1pBK+Gb2yV7+AOsPdAlmBptCFPau1gavJkb/35fWN06HL6vZD1QXJP67AgLaE6fQL9jZ9epmCmApw4/EQJyqeuCb55uQIvr5KebF2YiF4OQQlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779118234; c=relaxed/simple;
	bh=dL9xRfbK3iir88iFwuOEWmCuaroZho+n6Jh3uAIhh1g=;
	h=To:Subject:From:Message-Id:Date; b=SU2zuY+eG7Htb09zOVEAa6pJw+sX5yzljsv++PN8n6/KlhoDlUZiPLRrlM7+dITYAXLsrpqIjP7NLBAi8M3zfVbIeSt/WmNk4yFcSE9FOW0hbNdwx1pzsHrWX/XdSaooKY6pRIFsurcCYNaUmqxR2SBIRdTS3xtI6zS9PZxxd1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDB3OBW5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDB3OBW5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD006C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779118233;
	bh=dL9xRfbK3iir88iFwuOEWmCuaroZho+n6Jh3uAIhh1g=;
	h=To:Subject:From:Date:From;
	b=pDB3OBW5Tk8lmTHV16PQQeXk0CMfIKvOTaHsC98Dg9uWTBW7kZfN3TgCaIX8qFpie
	 MfBNqJgpz9Z3BgXg+R6qdPeIjMJInW1YPlimJ86Rka0pNfb+dM0BAKTwoSSX6zZbY+
	 HstXJHLV+MURzDNMxZVm+NwKVClfrUBLieHGw4LMgqcpGMkh50xQY9DfYp89PQZG+Q
	 drYU+JppvZN40OBcyu30wC/9av4Oksozg35gd4cKdmf3LeqSh+ASfilB0qnTvFGn1t
	 vfl1o4E+6jyFm2e9ymF7JtH4nUOaEFhc+7fGGl64MYoRiGwLHbT0+ygFsipIBrSGwb
	 iVT/lvzRyA44w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2F8CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177911823369.27196.17367368652105791463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40ea8ca43a55c1d68a18567061f8b8f627630631af41010de813e01e4697fde8
Date: Mon, 18 May 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779118233
