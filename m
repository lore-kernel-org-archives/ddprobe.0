Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D851391
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 05:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775538934; cv=none; b=nOEp+TzyhRvPBjLHxtbqgvNiw/uL3MZLeM9dfqi4fHbI+99qfk+watxiNsb/Hcu9otyGZQnJF/6HbALzyxmB/kQ0ACOMJltrtj6mqMZfHpawDyBxcQlrpeUFFdO7f9rnMb3KG1RhQvKHKJDKOk7lH/LIb8l72HPTN3C01uPkS9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775538934; c=relaxed/simple;
	bh=6DNqJAaP1zoGWKmPGsE12DVHFoiaOReGYPVszBzCO2Y=;
	h=To:Subject:From:Message-Id:Date; b=Y6V9SVF5NzoQ3+zbQ1c8FdowIUpTO+KBX3kx18PgflBMmX5y3ZdVkVkZ2vkhAX9guCPBYWolI9LqmqKESEH6AROG6XEuZsUxEsKu3vzU1K+8UtS0CCDiqwGB9ZQj7GHoPtvqSkEM1yoV9UNqzOXQDW5O7iX3Vv8EYx2M1QGrCgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yo6yP9ON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yo6yP9ON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A07C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 05:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775538933;
	bh=6DNqJAaP1zoGWKmPGsE12DVHFoiaOReGYPVszBzCO2Y=;
	h=To:Subject:From:Date:From;
	b=Yo6yP9ONCthJ4FVf0Qq5DHWFWeEd9W+1gnZ/3E27zMHttvT4h4v2s3q4HcPmBxs4f
	 W0aWGpOxRe6Ih9sxHfM1rmzpuvXAP4GIsqNcjOQ3uwuK8ravapf1oPqTdmCk+am2A7
	 yCVdlz7Xp6yRQKsA1U+Ci0DdILBGFRpj+p2Qz5y27HiXsn9erf9K5OCHMg+pt3kn/V
	 r1tlHvFENR9KPxzp7QJmV62VQg08p+b7OfnJY5K6a7WCDpohX+h1YG0sK5clJBLhAn
	 2IAdkOSEWMEK4fyaZgoLR88KQzVUeaTCKjJILOZGpiBQrVjTda3uBUh1sUJgLmjKdX
	 9ukMZNnqBGxTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AC4FB5190
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 05:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177553893368.26357.17253779758677237794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 911f76ccfb592aef396ee67059dd9dd71cd7275cb3d8a5520d84913ecd471324
Date: Tue, 07 Apr 2026 05:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775538933
