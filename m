Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD82A145B16
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760466593; cv=none; b=EL5XWmobQM0TjJQbV+UiGbZNxA41lI2GUWVdSsAtHc3VNk+x+x5TjxD9TAV4wO5A3cZUsA/s8BNcui5hJdFBw/BvCMciT1grRHD67iQ+s12incW3xnFHN8d2JaWAI0t+ovuvw0ZeHd2eBq73y7GIVc5mRwp6Wl55ncXdXMZg9Lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760466593; c=relaxed/simple;
	bh=YZSa6YqY0YEz/g4eQ7+zqNkhcq24dXouzUyxEIysPGc=;
	h=To:Subject:From:Message-Id:Date; b=n/03XLq//PG74gP5bj4mZbrH2pf9tmIEiHTWwL7ENIBJ/9eOXuXe3pcntsXI3kUnP0yJsTpf4BFUgb8XQmtwvQ8mBpc98J/kjN2EtbvZoPmWYUOyr1X7tdGmb5sT/ibDYCFycxdrRVGX46uUZMilK7Oxc9JOZekbVg4iNwkIohU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvKBSr5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvKBSr5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5764C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760466593;
	bh=YZSa6YqY0YEz/g4eQ7+zqNkhcq24dXouzUyxEIysPGc=;
	h=To:Subject:From:Date:From;
	b=MvKBSr5/1FZg0LaRAp0esBzT74oQf/OrFdtjCQqTWpSEF1xRsCI7unrTFKgNBxYTH
	 oJ0G1TjJYHqTONDkZBBfWoIvr9FIDKOzXREw+l1lLsOUkTzQMyiDiQNcW24i12dJQy
	 uLqRda4omQN9p0EvT9lPz2zCTiDGaN2nYQIWOp6Q5RQTALeN1anpVQ2yO0WHtzCaSu
	 98853kjGutJs8wR47DkcPHceQ5LedYvED/Y6z2aQhUcAQYJJQUE349dDu/YmBl2ec2
	 uWAQFcWgBBNcHEl20LhWBKntzrOKtRvsbxDFHGnJh69MBT9NDEtnSBaOC3G55/LF4H
	 U+GP1210l/9Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BC5CCD190
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176046659358.4035.16655690733285253644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed003b1a1dd0712d37f5b96a56a84aa4113dd339aeb93be18975ddd39aaf5249
Date: Tue, 14 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760466593
