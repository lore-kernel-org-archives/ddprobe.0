Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554BB282EF
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 07:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715845943; cv=none; b=OMn2i7wi1C71hQp3JwdB/QUgb/4Fh4Jn8oJV5Rq3rcZMKe/jZTzDrJLswZCZo/vQe0pT6VWjiH7DPzSkQ/tuXgGuBnRVIpyAZoTBU7zL76ttt5xUgG6Xi97hH15MEGBHW17DI3T1httG2PXK6zP2gCf1jT8CbyQJ+dxKAMd3n3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715845943; c=relaxed/simple;
	bh=p+GC9o27KRnUObOuQhmB+X0Hlb3Sbl4tKGhV/KdFeDk=;
	h=To:Subject:From:Message-Id:Date; b=VmwNxcaja+UjYt/7JZaKvhGZTHaa8kDV/BilB2g4oTaNjW9R1rHv0YDnLc8yIDOG7tsaAEyvd5J69MvD1ieA8BT0J/VIDwKdpOyCOXxmkyP8Spcy/blWODAA/SJ2HlY9rs0ECzUVj/WsRdCDr7BopZnIZGQyrgBUuaQ+INj3zQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGKGYJwY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGKGYJwY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EF0C113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 07:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715845942;
	bh=p+GC9o27KRnUObOuQhmB+X0Hlb3Sbl4tKGhV/KdFeDk=;
	h=To:Subject:From:Date:From;
	b=hGKGYJwYGNYKfvLjXp+boYq2+zpM+FxVGmdNlN7w/w5thsStixABDBhtGcildv3dX
	 jbDKGAww6Rw+VADZqYZP70mpoVGuKSs/T8OFok0PX+4QPLg6L/na/x5l5CuMB9c00T
	 moX6My0ma6XKeVwcRQAUzt+401ymCP+BafxO62KqpQsKs3FQG2KiHOGqATNC7BIpCF
	 1mrHw2sxY4FCzL3l6xP2lSo5I74l2qX20La09xNDxwiEmtiGtzQIqOGvz35M0q7SQD
	 YI+i8mqfhFoJDcXFAdX4LTtX4jkniZ0/+GNVHLNpFA7W5tAF7eCPk9j9itmfGkvItO
	 8qDW0rLVNdvnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2627C25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 07:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171584594278.24070.2240402663811058046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d248216c132ecd06c05738dd59bc56af4fae9a26fc94ea382ada56ca701fdc
Date: Thu, 16 May 2024 07:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715845942
