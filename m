Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307D0329E6F
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766146434; cv=none; b=q7GtHn0ZzFjXEOLtoXxEn/VSYwpJauqzerIUSUbNMuUMi0Orxz0xdwLzINszdR45cSAwdoJOiSfYdyQuC9LkMNX5YDCZbTYBrs7M/JDMRyJKr5ZSKEhIi9t/Ggo0IDrZrJdyB3mMXvKYrD/UyH3g3ObZFxrglvr+BU8fkjRB5jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766146434; c=relaxed/simple;
	bh=zkZchwb70c8PUWQT+HIS+0nNwacShISmuM2h1tYQJDY=;
	h=To:Subject:From:Message-Id:Date; b=k09O0ds1uqF1lUElm9l6sPQsboAsbuJJWFEz+L3Rq1YuPzvzubeBHBxXaZJ341g5U6d7/bxkN6pjbGqP+07qBqYqseD5VCS9s4HpwoIKVUoWHflJ2+/0E3T8FlyQYdFquHfI1keS83iVXhhSlsd/rq9to6HMdG0KD3CdnTa0wkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYqeR9c9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYqeR9c9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF8DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766146433;
	bh=zkZchwb70c8PUWQT+HIS+0nNwacShISmuM2h1tYQJDY=;
	h=To:Subject:From:Date:From;
	b=uYqeR9c9dLHAkn++bUYWcAQ29F0d/+5Eekx38C/hSLaELcjFAwaUCkrESjlyY/tAW
	 2b/oMU43bmgN6OLBs6j0PAx3iMTnMdW1F7PkHKx//oHRiv0PXu4b6eaQFxI9MBDz4F
	 zUftLRxhra8ITOpwHu4JePQRIEgEOE7dF/9rA96upzje5CHQVxsXMs7mriJQleb7gx
	 dVhyLM9RGDP2T7LrCb4RQiH9XhUZ5dwN0eIu+ezKJV47L0GOHJCF6mvFomWXIDO8tz
	 UJTkSvRVDUqXNLcSjH2EkPkYI2MckvKaKVnOhI24WvOk8nzYpRdaVHUoS81y2GT0Bz
	 hm4ysHYCMAosw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE1D767FC
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176614643358.21764.17161275237949165572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e73101e8bd9024dd30cb95099613a437ca6bed27aaea57479da361fddf73399b
Date: Fri, 19 Dec 2025 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766146433
