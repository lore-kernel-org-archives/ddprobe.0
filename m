Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B8F2E7F2F
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755979194; cv=none; b=auoROgMUo5JrakkhCDUqn03ceGLaj4iV9n5WDmZjVbB3ZCAU5jjQ3q6p+UgxotVPHAV3WLTDOuv3y2TW+SnisCj5Ne08l27/JBQ/w4byZyM5RtNZiqxJmA1V4OkiiyDPB3j3+cC9wfjmV+oU5uii5VqGMb8gwcz4yl1S7Vq+pp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755979194; c=relaxed/simple;
	bh=HN5gB1MC5Qz9VLTP4y3wDeQzIUdpBm08eu4JyOCUxl0=;
	h=To:Subject:From:Message-Id:Date; b=tKQKZNYDr7yMf89uSpcFKSKsCGj8y7t2+fvjxmhZouAbgr2qEJLY/CHMLDNo7qhRv02L6OAU0wSZlNgS0lFm0g0QkGK1a3+faC9/gICuSwBzAf7L0wufTIw6L/qHhSNCZvK9/9cOn4LGcqttlqSUdRCmDi82QdBWjH5ltHRIGuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NehFG7q1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NehFG7q1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6701C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755979193;
	bh=HN5gB1MC5Qz9VLTP4y3wDeQzIUdpBm08eu4JyOCUxl0=;
	h=To:Subject:From:Date:From;
	b=NehFG7q12r6KZwmVmqIRP2UI7Cghg5qGDbxCFb40t0CwrwYdP5xEW4qjOUa/W+OYW
	 tJWrlOxLt18RbDSnWHOxO9gWUtgPNASPN4ZXeESd25UTouBE/9vhWDIGdLdT7aDpc3
	 R9ZU13esOxkjFnIa+s8tKDhxdP+k2mdTMFANAmN6WiM1b4SuVdWGtYPK5ai/R3g7aZ
	 Ot5JJPXHxlPHPt/uFuE6arlWNEzAdo/4mZHctHTk8VybyahPoZndMXf85kdqsSwcZs
	 yHHdjsHp5MQiulSUTynai30Ks7YOfeWXzXvqtQRLdM47jOiKTQcqyc2e1m78BbQguY
	 06WaqTzmKTuqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914C0CA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175597919357.29151.6626419596702552168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfaccb81573d2881c76ee61d717c7e17248be20d1f502292e217388c4d571f19
Date: Sat, 23 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755979193
