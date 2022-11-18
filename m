Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D04021840
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68FB4C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668745254;
	bh=7EI1eEPmzf9+o8FWRrG9IB180lT7Hu+EiI1PkD8NniM=;
	h=To:Subject:From:Date:From;
	b=OuPxPemycHo7FBqNGBkNpLBsjib8CyzkOs7iboZvK1hrxMlRZVCPXuAhikUteurp9
	 MZQDdilPV/rKcAbS8c0YMuJulQG7aOVTRqKy03hZ6OKXyVe94l3EEA5MJIDXtEjK0L
	 lzRWY5s43UWGCWdkvIe/oPlYR4tivBLQ0FtPJL9xwLuEWUsRG7wS68trdASFdjy6q4
	 dfvkZTr/IYH+FQap3bmVPsDxFWl47DhE88Bmv5PKMkZ1PGn8KIeXl/zwkOHlivFIlP
	 lczVXNPzxaXfMTTYWoeB2dQXpnJKFRvvAWk1dTHw8PGMeQYwG6108BSh3k5s1rbZvP
	 Q7vRNhOLBf16g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F1B5C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166874525431.17954.2079081426265826535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 229ed3c1df92c7ac1c4dfeb5c7eacbbfa89dd1967ebfa4094803893babf55433
Date: Fri, 18 Nov 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668745254
