Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1398D29DB9A
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 23:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764892374; cv=none; b=r+pwmAiEM9Q8yoSqlVX+3ycE7bqlPwLIAPlWRb9JBXkBl4+B0Xcf5a4gz9Ozx8OqL4EBxjlermv7Tl2v4R4zWCx+9EyLy6HdsTeua9KxY/y9TPQVDGvyrQzooTFB6ST0E27GGoB6oR/DxSqxNlDKmTjoVHerEs56VUhxns5IUKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764892374; c=relaxed/simple;
	bh=MsmmVWq80+yW48UsrkpHnk18iUmZxiDFrfJXCL7tL2k=;
	h=To:Subject:From:Message-Id:Date; b=C+idtD/Ay0K6k4oTEY9ySEcaL0lfoVtCFf+n2Ffm3sYvPiyyfyzBfUidMDcJ/fqCDgWf2cZoXSUweKfxdBiTPHOT6k9OoJooLElTnuSLfuPT3eKRDLkwpTLpXLZZN9Tvx7boK8llhk0wb970Agq8f1IQOKJBSJLCHLW0Zy9gSKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQJWxicq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQJWxicq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EE0C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 23:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764892373;
	bh=MsmmVWq80+yW48UsrkpHnk18iUmZxiDFrfJXCL7tL2k=;
	h=To:Subject:From:Date:From;
	b=bQJWxicq9g4ztEgfeStVEAegaugTni/+odrmUE1TDe2in7C0ZAFVSei0OAQ/dJbUw
	 gEzHmFexRn4Gtcag9MkWRZIPzyr4KiOiU4heA9/E/JaQLebQvyeKo5UGfDhs0QBskg
	 bSeAdKRB1AkVY4ccy33VnlOFNoVwpAcJtPgkIqQyZzMqK8Gm6JTMTKVm0bEr2LGZkh
	 HXWpraf2yEIu2+p31gI277+EcH9snPIY7DWBYbMvUSxRMYw595kxLNyDlxjUBaqsjK
	 +aFuoocphMcHCNmlcJx3CsM3LJUqa3QOsuDGGJSH9FNdFILxoUZId13Dpmq4IAeNog
	 wBFwpGOJKVzxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938F8D2CDE6
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 23:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176489237358.9581.12665790852826657581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c6751921e02b1b1ad56205a72334cd48ae072dfba307312205df7842d2388be
Date: Thu, 04 Dec 2025 23:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764892373
