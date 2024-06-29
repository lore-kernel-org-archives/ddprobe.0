Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60DC14502B
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 12:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719662663; cv=none; b=Q+uZFkBISrvxLk3AsFkgJ+SGZTsh5Zza4kMFqf4y/lBxVzWaQ76lIzy7QaFsGzus3wEFHZTuB+6Zy97qfSfjwIK0hqFWCtYvEK2O8UFwufX1HteGJPx57/yI9wsEihVPnlQ9LCtxyd5eLhnkMySmjJ7fJabvG5OJ0H9IkRCiY+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719662663; c=relaxed/simple;
	bh=QFVt9QwzTw19PouY4xwqMvPwPXjF8pTB5i04PySFyn0=;
	h=To:Subject:From:Message-Id:Date; b=GRib577/FHxnwOV6i9oqdJrcFVla0QX+BS7SQDnpQhEwEtro2hHcl1T7hAkDEwhbbGHVTymlITXy+fckEQxERS8WjDVSCcDYPtaZpjRl3wMFE6RyeN0/gu6dq1cLBSuobwi0EwAja3B4T81Eq+o78mf5IakD8BgxWUbHQ6speXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdTtQeru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdTtQeru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6B7CC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 12:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719662662;
	bh=QFVt9QwzTw19PouY4xwqMvPwPXjF8pTB5i04PySFyn0=;
	h=To:Subject:From:Date:From;
	b=LdTtQeruZPKZB7gc/UOEgMkO+oempWXlsJhIKqAf+9eefitLQc/7BVxmXNGZWDwz7
	 Z+BTIYSS5P9d3TvfRqIKT7dWZKtFsZRuU6+ctYEe6fmWC0aA/1x748ZXcOTuffJ83r
	 EEL7Uh7oDnOaIxY7GtJt+8AtxxjzNuWHJZaSCBb2aBgxmqHrajlrDsJqb5Wbdnx4N2
	 O6U1Ou5u5aLiOnKqHbW/TnFgvYSWI20jsrOcGm7w2iFupdy8WjbkgW3FPf9N7X+ayi
	 LstwpEVnQfX4TKISu6cJMzZiIiaZIO+s4vNq1q+HPbcHCirCsWYA+aApgg1DO7SABQ
	 Qb/puzxI0u49w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFEF9C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 12:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171966266279.12814.7105407539671498780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c995025b051de90af2c980195bbc6814c78330d6b86abf684e82a253ac20996
Date: Sat, 29 Jun 2024 12:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719662662
