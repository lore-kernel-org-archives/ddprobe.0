Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1B22472A6
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776534454; cv=none; b=MSJP3JpRp+6USOF22QVI4RB1yMKLkukN3CtKL9TMWBXhuIWRIHW/944Dt2xNfTJVq/M+UV6g7qItzBvlT/TL5LuYmYgtmaxCCsCNcrtmMtLta+sZzTrNOpds9954cWxR+YKuM6WHj4KYtUvp5r9LiUCCqtMVruzV9kQlrJwi2D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776534454; c=relaxed/simple;
	bh=tusgUD4HwuaEDntSyVKLz9oaK3JniefB9kq3GWYX8L4=;
	h=To:Subject:From:Message-Id:Date; b=O51qGNljx4enbzL7AjDShnEz/xkqsqROAlb7wJrlYYWOSzIIabUcXVP+4xV/xVe6m2gnu1N3RM6C3IBc0Nv1UT7AMQuGmPOCiezQgRzs1Lj08vwyoIiZeNY3D5bG3T5eHWaJOiNcP3IBgiOkNjjSTawzij/b39wieiE6WoRJZtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7/zBWf4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7/zBWf4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD35C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776534453;
	bh=tusgUD4HwuaEDntSyVKLz9oaK3JniefB9kq3GWYX8L4=;
	h=To:Subject:From:Date:From;
	b=g7/zBWf4iZwsKwXGR6b1FgxJfgZCCQWeAm2I8mDFLumuSAypKS17XtcHKAbpmvhiZ
	 SbhHV+D9wvRH3yd7zIZott6zd+QwPWJpJDIONo/qCimYMgMS0+TqNzC/iei+VnA7e5
	 cxOQewEH56tLEJBtvPdKR1pDfW5YfPWfEhnYSQAFv+QSV8CXek0tdaRTFcfZd6TlAL
	 aH0b1O/yTFIinVvItEg6Ie33CSALk4698/P8fkfT3k6FSKhxuSYxnSr1UJMeRPr8bW
	 CPpSm9/BqPlmzmaa3lXNSCp81TZyJqLu8CRjZqndiWg7kNQnH/sVsBlrBa5siEDHI9
	 +zc+o5hGoOgxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E80F99C88
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177653445368.23482.14316376281059653914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e04487d2ed001832318d872e93aee3d20a4f22127219eff3e70004d6e79c9e
Date: Sat, 18 Apr 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776534453
