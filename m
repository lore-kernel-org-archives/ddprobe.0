Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7B621E097
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773375894; cv=none; b=MUyU15hvcB2jNFg08tqtBY0wpoBsJPGpMpWdqjYu992WJUke1F8X1h0UMYLlVhvafpj5Lp7guPwjyD6ajNoHLMgwE8PxfFrTrsWPrg07boET75GsBeKZofIyro2yf+4ue5PZ1VfyoYvFmf5BWeG0BS3XSmvVWEzRkyKiQsQxbe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773375894; c=relaxed/simple;
	bh=eklY1zn3xKRG83p9THrT9tBXwFwViqYFpQt47QMXYnk=;
	h=To:Subject:From:Message-Id:Date; b=FdwfXL0GP5RX8jw1kA2UqvDJky+bK54Wjrlvmik/9oIfVbQcdcK0J7JxOqWsEICusN23dtoB6AkaRB0JBLt+o0xRbj8OekDu0Yjw5PpPrjesCCLjo9N0TtfP+VUe6ae7/s6e/dPQdV8DQQep1u3F2Anvesyni+LDSohrHoXxZ80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJXYPbLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJXYPbLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFAE7C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773375893;
	bh=eklY1zn3xKRG83p9THrT9tBXwFwViqYFpQt47QMXYnk=;
	h=To:Subject:From:Date:From;
	b=GJXYPbLU2lpGiU9owfh4P+UaErClvLUC4YPYqQUSa/dXZQ35R9mZHP7TsAqpCjWd4
	 g6YwmEk4J3hwsrsQ7UamlqsHDyJnubTwEWo+gZlNdGu4g6jq3OytKPJfjGUw/blRs4
	 oxe0oMJZyBpuHi3lY6P5quuCcu7L+aPI9eiZB2BWFO79/5fsfeHavCg3/LUkz5Fa25
	 dMU5bIOqs7H4TkYVp2KsJ+tcdz0Nuc+qtfdLV+64Sg+ngXyDHvwJvBjtCXNzRv6EmC
	 ANO2fZpHohPTLWsFX/1lqtZOrrkevi2B1/mYJ+lYkX5EpBwNlUf0XgBzAFNbExjXx+
	 v7J9rY7ZDAzaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D7B106FD6F
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177337589358.26395.1591847685872435889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43c2ccc0d1549f179c850315a6b8768bea9393f86a979067054283e2cba9ab71
Date: Fri, 13 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773375893
