Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F90617A318
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753375794; cv=none; b=uq1ks+HxiRhdCmAlx8Ezqx8tq/U9XG/aAPr1wRzso1amtdnPBLo+o6lb9g3p3TQq5dK6E40rlKzCruQ4j+tVQnt1v8bwE0ZiVVor9FHJWYPqQ9dt1A0wy+/lj4dxy61E+DwmRxdXaD1PA/WugAdXtS4CWlIpvGXm9KadCUctP4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753375794; c=relaxed/simple;
	bh=7HzMMvfQswVdQoHyVugXD1geE/wuneHxysRpwHic1zA=;
	h=To:Subject:From:Message-Id:Date; b=GnnhYec/9kgKiLS7Iwq+T0GoQENKU0bwvNWgW6X0HhvD14FzpVAsL/1waxMX/34KvSjKXWVr8NZEXrTiVA28rNKj3+quRiI/sdrZfCMQ3CWV4Z4L5TlPuXS53qNf2VxXXU+zskSRcfDwMdnjUZxXP3CWB9w/oPK3g3HKR6hqE4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRvVnkl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRvVnkl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D474C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753375793;
	bh=7HzMMvfQswVdQoHyVugXD1geE/wuneHxysRpwHic1zA=;
	h=To:Subject:From:Date:From;
	b=DRvVnkl59LWB9I6QFvKMGq5u+wBNp+oMpQaCLlJu4lGz0On6y6qjeyddcH0X9lWvX
	 p0koMTUKZX/HIJW4nHWOs+NRAmT0F9Xkn7XbBxMzgKsYNSk56bXjdWmV7zgafrmSeU
	 uplglZ1bJhhe51OZyjb/bel09H2uFf0qlTVyngCHP4Gr6aK5ecuyoppdVAkv6aakhY
	 zPEQy2HZK6FQT7KKhKbQ/mbmkhtgHPfHsWALDtEXPUJ70v7jDgZTu/ThjcyoR15qlN
	 4iTSSm0DwDZLoi3WHGaYXRdyYxQkkfdUrgjY08G3RqLiyqkyutf1Rl4i2cqosJPYma
	 hLfVMn6FJdEXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECFAC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175337579357.9925.3075861104204761903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baef5407b58ff389d0310612529d37e78725e6336e44a07288c9f482666bfaf6
Date: Thu, 24 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753375793
