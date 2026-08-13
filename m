Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD0D31B10B
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786659034; cv=none; b=GUF11BDLKV+nLO354i8irY3hHA9KAykT7bur1ZMZcneRS0wNB+VWl9Vd/cDkXrqCiXadKTYjhpB1v4ye5jy2SBQOSTi4s4Q+WBO6EcdMqj3CNymq7zAi1DbYm2/dag2KhqSYucAcz+2hP2mGl5BDb4zLS+yio2g+IWF8gXFRYT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786659034; c=relaxed/simple;
	bh=U36fm9IctriHfm23gt0JnL1Jj7zvvBPb53HBBwAD3Rw=;
	h=To:Subject:From:Message-Id:Date; b=YwmwtTQSMC/1UMIFEs+v5LLtotT2JaqtCCF2qpjtxXbZtTOb+rjtEz3WQqxirZXmc0SgHtSGOMEn28e0lvWKN85u6EZqfE78ZfR+0l89aXQXXCXsN8paM96wy1YKSKlE/AmWk/91uWNmoergVFcyq/w9oefMs+fD3N4wlQEfAXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPsCpoB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPsCpoB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC372C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786659033;
	bh=U36fm9IctriHfm23gt0JnL1Jj7zvvBPb53HBBwAD3Rw=;
	h=To:Subject:From:Date:From;
	b=hPsCpoB6J8+OxE8WFQTJlAbQMab31X2a6Gk+oKMOhSu5ttosbFu3ou0IlfCSPIWbQ
	 33wF9k2tXBYjlt+7Bz9U4vrIfrW+IakF3O4myY/pHRi7Dg3qvlKDo5UKLy16Te9p86
	 ctfzDW9ItRkryw88evPI3zSp5B2/cHrjgnbW2v0oGXKrJ5KSBO/hcX44UUgfWcPwMn
	 fUjgQMTH3R6Ha64jktlwTKEqeWROayXBUeZn/jKdPrEEJpp3gYKIyAG4YoUG7fT1LF
	 IieAa7lertOSj8qkE06lxkFUO/Udg3DPSInVzDLqNkbNGk5fZxpif6M1/O2X8vHpDc
	 g/bueABNlC0XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C36C5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178665903368.5108.3313619730087178210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 039422ad9212303aed61475159254448db740d7e7d8693becc89d4f8a1daf245
Date: Thu, 13 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786659033
