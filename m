Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438A421E098
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771221894; cv=none; b=g22NIiXA0LBmUig59vVY/mHYWDn5JjK50+3LTKPNQo635O+Y3bG5+F8HvniX3FOOvHe7hy9m1TNpz4k1fBtFx2K032xxzsXwWEd3dUMQZ5AmOOEoPihFyAKvQHmPDi1/B9s7F6dNn9ASuH1+gme7mPMxe4oo+gsbKTzIlsTdsmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771221894; c=relaxed/simple;
	bh=fRNYVuGF2mtxvMmTO1+1BxPiQTMqp9pESotxf54ztGY=;
	h=To:Subject:From:Message-Id:Date; b=W53uLAtkMgXPObjzoiHAvnYlRXJcB24drYQm2z2cgtXmEmxWFQKq8Rziakl/VjuXvqSCyEHW4r4e5Niz6AEAXvOj3W7ltGJftZMhhJZcsnCiz+GUnf+LNRhufxYdLYYGPYgZy+pQe57sPTnzLlS6YvE2lhyp0Py5uEp5fIxI7oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUnBKy0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUnBKy0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE605C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771221893;
	bh=fRNYVuGF2mtxvMmTO1+1BxPiQTMqp9pESotxf54ztGY=;
	h=To:Subject:From:Date:From;
	b=dUnBKy0eE0VLDXYKiYBY7XLfPlYa0J2Rwt//u9i5irNy0xKYKpJ1W9Ls3NDBZlLV1
	 XqOhJUku60jGL0d+xBs5nnteaJyH1ExkgHSKm68Hm6STkAAhsjVVyWZrEr2HdnaRbf
	 ie7O7P7h36esrjULO30n7RJbimh87ldkBhx1a4z3xIS6V1uURpWLl14nnkfVhzxLI+
	 hn8DFSsZUlPi9as1hXPkVX4zsVjBDX3+zaZNei/KCfapTBzr8jkATfwnnrpPYgI4fD
	 zjM51SOy7LS9jMZItB3ijmObFLoMGbqwS8hm85l/uwiCi7n62yE8VIoZA2yNUuuKlj
	 Cxs4CzZRl/Dew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7830E63F2A
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177122189363.10229.17531717050416513139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97cdaea97ea4f0dd61b7de3e40db0215c8449b96bab64034c3f925bc5452e3ef
Date: Mon, 16 Feb 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771221893
