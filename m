Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDDE24466C
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776603454; cv=none; b=mMuRaK3N1mncKvo35t8Yr1/2KAI4VvheTWMAksynsFrvkYSfzC8CQzku7j6J5b6lBh8lzKMKhRWsi2qxuZRR3/DD7ZOs8Okq8koPJ+Pzk9J1QK9zGFaDF+ZqTrlyXhzCZ3KpWgGP+7VCzEtYbF+hZ5RtkHy5DJm+KBxXt51hZb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776603454; c=relaxed/simple;
	bh=WCm5MmJPHycZyYnomkFxl18sfK0m+iCXHLGVhzRPBgM=;
	h=To:Subject:From:Message-Id:Date; b=rSCNO9ttfbB1jpZHAajeM4kmZd3A6b6hlVJXkre4CjlH7vLNsziW2OozyPB8sKWQeXLxMyeoGSTdb8Muz9Z0wADMtloYm0/DAF2sixPaTYAaV1HEnmSYm63OGtpbjnYW2Mv+7CWOIV7DTYBOTcfs7jw7VJWyTfKMu+38PS76kfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRAKnLqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRAKnLqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C315CC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776603453;
	bh=WCm5MmJPHycZyYnomkFxl18sfK0m+iCXHLGVhzRPBgM=;
	h=To:Subject:From:Date:From;
	b=YRAKnLqXEhVWkzWrIU6R3n/kDCK7WqqwRDPjx0H8r5UpoZiU52IetZwsYKDruhEPL
	 6kwSR4cGDJVsS3GSTguktbTt/u3ApfcAEXIYLFfd5HEwqvASmGhwN27Q+GM4jAKIBB
	 hYR48Ay0vWJdBFgN/hd8za4E0weP7U0b6XIJjWU4ktzRt4I/Qcz6Qbp376Q9c5/Sl2
	 CU6kSYEput2PURSLM8nm2OAYZR7StuFR5sqQ3GldWgaywrPeWxN1ekBWGm1CnDYSPw
	 0jc1EEAu6FyFK1ad6GZ00iwv1NHFXjV+MCsl8dQ1NwzCYsozomoCv6x3Hrb+VywW7f
	 37SnygOaKvBTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15C8EA7199
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177660345369.21770.2594874969747709711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce78de618b4e26af9d0c5744936ea0918ed50cac73ae0a5120e44d6ce3a8d636
Date: Sun, 19 Apr 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776603453
