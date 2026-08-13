Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513A9372696
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786609835; cv=none; b=aa3Ix3r6ATsrq1cWvROq/qESIlSqfykAXQspaHtBDsPbd2JMEDhnIjuOOHYZus9vhVTRNx0fPgUWDaO2lkkrv/64v1BN+OSFIr7PPdw3awtlUcSC1ydimFA3JH0cqfPhOq3KZYdifOjoOtFkbQA7I+kav5974OoEBLb6vr8C1M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786609835; c=relaxed/simple;
	bh=yixGNUknFrp7cgX/XeLk2EBvHWiqJi3lCunBsLmwl0M=;
	h=To:Subject:From:Message-Id:Date; b=BZsaPqQaqnc+CwMIs5JcJELJfvbSOo20atW1W9SNKrOa2bxmVVhRCWxKWD5DiS2qHJxKqhTjIHFwxsW5eBKR3iIt/+pvH+25XE7cIYgGNSG9b4TsQNNJMJeJZs/lrOIJrJHr3Gm+W8pTd5zYYjfaVQL1Klr8lgp7BkDv6yhRq/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DA8U/CIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DA8U/CIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07CEC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786609833;
	bh=yixGNUknFrp7cgX/XeLk2EBvHWiqJi3lCunBsLmwl0M=;
	h=To:Subject:From:Date:From;
	b=DA8U/CIHzt47hrkFE9IY+ZSGZKD8Z3T89sSAcQGmKCELaR1EYwScNW0PuImB77f+k
	 3HLu5r+tzsFhAb/ZNOQN/geKo8OdsImWcDY+9OV12+QooL0Ucy0Rij/mq3SvMBs5YM
	 nkNZKZf0ak+C3lrTkXEI59MrEyKDBYAe5IPMXwFD21LErQS8M9dUGz8MRfr5rMe40P
	 /ZCqN7NJ6xz+So5V2NClp1xqo8QdTEAJKrZxbv0I8EUcVAX9HkM7jiqI7UvGkZWiow
	 V6VlRar+yf8b7uwaqRXUX5jr03KO1UUEXENrdyXvO/AvywY6YedgPEeWjURgN1bwpt
	 1PJs2WNOUOnjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A888AC5AC67
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178660983368.2649.2116019756404333422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be4e07facfb25eeb7ca6cbaffa8151f066fa852dcb5f7472dbacb964cfa53167
Date: Thu, 13 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786609833
