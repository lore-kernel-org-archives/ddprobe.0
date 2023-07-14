Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4FC134CB
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 19:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0DCC433C8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 19:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689364268;
	bh=vH9K1Ve9+d6dK0ARZim6e5DkNiuhw8YdT0ixVVwocuE=;
	h=To:Subject:From:Date:From;
	b=VPAB3ShQl+xOr2n03rp4q899K5fWi5AXaUeZZYg73rLcfddt+z78OYNLDyr4Jx/k8
	 rYBrYWc0jL2AzWLx//gh9BZNNeWpqDrxusTBZHoaoelWKf4kvsk8EWEPzo6J8m9Wkv
	 ldRIE/TctdeeptNr9lHZQbf9wKlpC1jUE+2M7nPDLD3zax2NiZMX6NV2L5bOixwV/U
	 8aDLApyuEs4BuaZCDAkV/K6K5t9rEVhgerMkADL8HVbIaawOZGNzv+l9Wsjb01bYKi
	 W/68iuUM/ann+ARzGUtGs4zh3n/AGjv40j2Oa/fpzZrmmmqR6sqUgxo8LU3PQDrxUV
	 GkRS9X9YDwUHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF43EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 19:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168936426867.31558.13116130355377073483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d00924f51c6befb6f7217de05343b58ef1017217a1832c772e83e7deb7b14c52
Date: Fri, 14 Jul 2023 19:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689364268
