Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DA41E4AB
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 03:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764991974; cv=none; b=cBOslulS9OFyvnJINOeinaNs+FMdlhLd1MqPIehMDhBPLz2JyNEJXTuQEFbgAXPVnPixSZ4yLqz33ELOHBHnOkTZOfVK3a9q7kHdqhWA8aN2tBqgVcUrwas2+x1eI8gmPRYMFCCvHkF/8lwU/VKucS3xJIv6ZaFNcLnNshO05xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764991974; c=relaxed/simple;
	bh=BOb3w+oCeiQWXRzhSivstt1ylPRPfb5od1P/ufF2Mj4=;
	h=To:Subject:From:Message-Id:Date; b=HuKOkQyRiV2KUKAA7et/ddOZqScw3XB+bnNiyKUlkdWR4c9AXVZN32PYF2IVWVszgaCkEXpyZ2HKvFOPoMASsVX7O6OwS65rpZGiIR85LRzstqLMBaUHU1F6D9eNGhUqYYOnBnGKigNxqcaHWIcuG5/rHIL8tY3WTLy5ikirkLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFEi+SGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFEi+SGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6008C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 03:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764991973;
	bh=BOb3w+oCeiQWXRzhSivstt1ylPRPfb5od1P/ufF2Mj4=;
	h=To:Subject:From:Date:From;
	b=iFEi+SGFytwY3IXwPJyMGgK+krrwtDHY6ofoBbw/PCXJWFNVoKinyX+Hb+6dgemP2
	 DmmpWFg0tL6X/whNM5V+mYK+JyZhdO0tKudLjIUA9abQiPmTaEp2yoS56wYyLoHefJ
	 Z3TYkMZZR1o43YcilUdCwbY3+3tyyzE9bsveFlkXTMYPdtRnIHRIX7bf1R0Xih0nQT
	 mo91rJj+KELUOStUvEZGGMcf4srmiYmLVVSmjP2tMVds9iytvXaoeM01jmGqX9jVEb
	 pxHtVA8exIwIDA9KUuZhffShxCKnMRBr/+Bf2+E5nEo9r3J3HfSnyuoP0xoEZQYL7v
	 WCz781fFxJcoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92964D3ABF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 03:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176499197359.17650.16796727414049371184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 459e1c4264a923407383179e1ef0332ad4692105a20ab003613dd3510653d07d
Date: Sat, 06 Dec 2025 03:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764991973
