Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8BD6FBF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748818793; cv=none; b=bR4bs/yfmzWSHheclL7dG/ZrThVtuFnH/OuMqDWXqZDV5zKf+TzfbONtk1UqX5SIS6QyH2H6vQCSDF53pYXvBp5Bq8dQytF3QF0jomF2UfiUxVzdoN5pnNv646pYxPXJX/l/3THOJgLZiB5yZKxMYqJK+3qOl+ypEBhLDcMmayM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748818793; c=relaxed/simple;
	bh=AIAQOolYJhdSz7S0yKZYp9fRuaK7s6hMIlbYo4JiP/I=;
	h=To:Subject:From:Message-Id:Date; b=Z+wJ8WNgLKg9LUGRXZGnyzaSJB3hwQY1uPDjeEO0NV7Kwy5kOlLxg7O9srT9QkG6ZIvDmJQx5kQpJSnfVcByWVlNhlX4JADUMIknXx6siIuJ72bMmVtVC66iM83Ia2mhbwNKzkWog2ZcuULh9Y+i6xH5d/wrO5kVNqLYQHT56XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6rOfQ2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6rOfQ2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A644EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748818793;
	bh=AIAQOolYJhdSz7S0yKZYp9fRuaK7s6hMIlbYo4JiP/I=;
	h=To:Subject:From:Date:From;
	b=B6rOfQ2ndPCi8NYJgw2GX0mCyRUmcnYUx43xAikKAr8jpK3ZDTRYHDqxYkecEZjrj
	 bjADxvC4InXvMSx/tbmvym4IPuQ3KSMBxqpnwNZlzPx44v3QtSqgbeau4rlJxVuyRe
	 LojNBD2fhDvyKjjsOP1IozPihOxlju0lDqBycrXUHbp3He1wrhr4GybHCfZxzXZzwX
	 66xmUtWS8aTuitip/TQGCt3k/+3KF1dg/BdfX7RR8qjmi91pkfL/OJfcuiix5SQnv9
	 CQGkZkrrvmXvZJk/t+bhbPuRqG1hVJqe4ItcbBg4YSnmCnTuZbGr9jtdMEOqnw4nbV
	 ltd5X116YYcSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9110AC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174881879357.24969.17594283049408994634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9586486af167834347012ac2003e23a842dc4623b828baac82590744ab4dcad0
Date: Sun, 01 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748818793
