Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C85A13AD38
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748282994; cv=none; b=kNcTBdTcfYWO8nbqAeDe0B47M16RJL7kqhcBnqccyapgepel49Qb9xFEEP1kPj1spd3H3I3tn+686KK6/VG04ZcQPRlwffpbWGLRB290A9aJMkBOpMN/dxIwXh276NtMdMCmtwgOf/KaHI/iasy348Z5wd4/2Vkm/fsJuau7Y9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748282994; c=relaxed/simple;
	bh=0M4iqhte5vzyKelfcweJUq7bd9JSUY8Y/mW8AnJz9iM=;
	h=To:Subject:From:Message-Id:Date; b=YvzfEHWzU9ZzQjXZCOyqTzC+i7uckulkWwN6HL4a7VegupnrjZBXIJOx6ZNUFP1apR55OLeNtrpKN/icob3BUHZtzEgA5MO4gogUd94vSQO4jvRrq8LYc2va8ge0DVTsP7rKmV7kKAgkR13oIx4nIiGHFQ6Ow6n91/roHuZZ3oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZMXCpoA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZMXCpoA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F206C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748282993;
	bh=0M4iqhte5vzyKelfcweJUq7bd9JSUY8Y/mW8AnJz9iM=;
	h=To:Subject:From:Date:From;
	b=MZMXCpoAXCWq1aAjAuNXHzniG+M+LPsraxqb4pmg9EeGEFyaWHLejEV9EYqMhaQLE
	 CMS7KpT8+gTicPE7ha8BMZDOdAIYDpqjHj6qcXBsw8d8qTPDuM8v8Z1gmLqjmmP6jP
	 1bfguhLv84YnOQo/CrXEOqq2bnBt+ykI9rREXjT280dGSC0ux442DiM5V5nNiNanwx
	 jIGdJQJA+itdVGoBYL5wFwQfkt/6MWArCKxiKc73VdNWc82/D+ON32bIsWuBKcLKdK
	 NUJk7R834tUD7ukVWFP9oac7fM107QCkIiH/Mdp+Ni2ftegWjRi+cikqmz2ZD8WEYC
	 0kc6l42LP6GIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3FCC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174828299357.3074.6194700140475385150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9be1d5ef28635b5e6c3a32ad108d0d2924f1d66c0223a3acf51008556590a8bf
Date: Mon, 26 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748282993
