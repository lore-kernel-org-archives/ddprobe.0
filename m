Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B13B26ED37
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 03:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769226234; cv=none; b=F4yqpKyHqNSuMq699rms3Etc6zWjDlfniTchf2XA0bOoLwvVg1P1v9SNOOS2ES+Slb/mw44lIdxSMcjyMo1W0aRTiQEZd2qfq+d5IJ+3V3bDo6RISPWBEGxvL4N738Sj0EilNI0tQDg0LSyy4NIomTAjYxK2bjnORiYi5W1e8PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769226234; c=relaxed/simple;
	bh=bPt4men7llkQIvCKh4+UOIwA83bikO8JStAUHHGYyBU=;
	h=To:Subject:From:Message-Id:Date; b=qvhYOp8wP8ghviU4RatnaEtml+l6iz14QDiANJzjBFH6SZmki0ZIkC7rY2zN4yzOf3r25lcaZPp8VETKWFFOotgcfqd7JthamZdJ9KPvMFfP2NgKpSHyXmghiE/xEc7/looSjCgQWhFf3Xz8GDPeWd/3E0kruBmVQrAaa0ZPgsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbNtHdLS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbNtHdLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9476C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769226233;
	bh=bPt4men7llkQIvCKh4+UOIwA83bikO8JStAUHHGYyBU=;
	h=To:Subject:From:Date:From;
	b=hbNtHdLSfOlHeO+VkuiOLM1X4VFZBDFpSgF6hJ1RvkuGH7JIDW/EXShJgx4b6bWcH
	 EDAuqGu4zQVBSN1y63VRyacIr4tnwZAZgLToyjDEehDCv4rPDjwZet8d2v1lyyj/fN
	 WvkMGt0V5/TLGNv0NzrS9raeD1upoOiTEkLPafBuuAsM5aPJQqWRjDlism9GidJEJY
	 WTLvJW8EWGCBXtp1PJatdZTbKC24YULxCfsXpD1ETL/YiBE3ce72+FcrUny8RoGYb0
	 MhqIz67Vdr0dNHOQ1k7CIbeJJ5JJcI3YEQkgRsW5bdxQEU/HiqGYT52hdqoS7GixD8
	 oou9K12Y5Z89A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963BFD77898
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176922623359.22589.15349409181127273173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e57334734b05cb19a34921c8c556580235eb701fecd4627477bb0b1bd592eb99
Date: Sat, 24 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769226233
