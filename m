Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D79213DBA0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777247254; cv=none; b=ups9x0AG71hkh50CxHUPplPzG1WPGnGvUhON22JxBfWR8IrRtayD6KqGo+PoQ0hgDLknPQhDRYAz+Wa2KQnJ1YbLgiq3QhBfBeMgiW+uNj27decFYS73aH02glmpqNGBWoqwOmMnOeT5UHXcgLwWUb6x2jCwDz6c2oa2pbj1fRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777247254; c=relaxed/simple;
	bh=p5Exc3GU5xc3E0to45WXJp6pKnpCSC2iqYOfQcia1Rw=;
	h=To:Subject:From:Message-Id:Date; b=oKJjJZM6P2J4ouzQb+KwqpOqd/uZ40w/i2t5ttsaMfj3/4aN0Kq7+4kmdsnCnVzIUMbeXE/MtjWQhGQS09EFf6Dvdp+i4l/Z1e6d9IqLE2eXRuU4WUZ6EdHpe1F8WYBIZL1lqArCk1XSg6Rjv03DYrZtNy6QlwKg7gFN/DKyA4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOyZMdDQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOyZMdDQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD680C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777247253;
	bh=p5Exc3GU5xc3E0to45WXJp6pKnpCSC2iqYOfQcia1Rw=;
	h=To:Subject:From:Date:From;
	b=rOyZMdDQbUNS1jOQgakEVk4lX/j3jykDQ97VL862Ktd5WnSbVmK5sbx3cR2Qw/6Vf
	 /Z4WQj9iJVNem6AJpbo2BSTtAlxwfkjwK9aNxXb3GHsgfN0XT8hmH31b+RnmAOSc70
	 YwIICQUybR6yxz5zS6kv4HClLdRB7k4gQgD59Tp6FzvspLb2opPRQg9Hg1Alsex9rm
	 gXspLsd2+/GPXC4GEzZRv5TLboyZWqWOI+/h26ELAeaLoanFUYceWcARftKq4np6zD
	 9XhnTt+qwaWFXgwBoYqrlTNZB+xmfo+L0uLziCAMCDIcyNgSV2fIUGkBxT/G3E1ycD
	 jZmLFY158Q2fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5E0FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177724725368.26122.10766302011070575231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc575dabb3cf7b16d1bf36e7cbd7253cbe5fb5306598304267747b375f548781
Date: Sun, 26 Apr 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777247253
