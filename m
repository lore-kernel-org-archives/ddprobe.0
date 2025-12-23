Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B17028C2A1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766508234; cv=none; b=NFVt6VV73EBrNH8jj6goJS+Bmb4sjc4LQfzTTrbDJW21vR9SK4/LvbHiXSVKBCs0rcLK6D2M6JtWVRRDj8Qa8hPHZHtIEF2LwILuKtY+rih6Oq3/haOO7vs8wf4u0vVIYD2DfP6ZQjsU4hIpVY7RC7IeYTg/kRQgdAOHT3+1Ugw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766508234; c=relaxed/simple;
	bh=xtIvmsENel6sEca8JXzfE1uuAY3lkOWlF1xSkggPX54=;
	h=To:Subject:From:Message-Id:Date; b=gJdvoQp73tUp/uXlubApcxm206n2tRlCf90HYKHgwApO8xXdPcQmX3vKM8GBKxt5gNEcgHRYNNeBxD2m218hjRwK0gWebipxtZXp5Jh2AbExwVlHqPvrTNxET99Ry7VvMlgBhUSOCYmUusxSXQwabUTkrCeAtbA4WdC0aRUf8do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdsgRGDg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdsgRGDg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2174C116D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766508233;
	bh=xtIvmsENel6sEca8JXzfE1uuAY3lkOWlF1xSkggPX54=;
	h=To:Subject:From:Date:From;
	b=KdsgRGDgfhx+A5ktEFgC60m/lBebshPau6zEX87LT4KtM2tU/hj2J0KjMk0o4aHS2
	 nUbwd1YkECBhBKjFUYNODwJ9CAl4kuP25kJajfz0W/nQi2fRosrmRaTYhZVvXifbkH
	 rEH+9IsChIOWdHV78Mknnqz55mKCJRY46L0a4zRWCQENNVqMosG785OVCpvyZgPJKL
	 bSP9ZGIAR55zwjCOC5qUr3cDPyHqnH9I71Os+6T7vXf02tO0nTboDquokbPe+O2Ayh
	 Pi/afaAGgPGjxPYQHk4DqZAs1T8bkwWdUDGngZFKonV3JF8m+f6qNJSyBW6o8nrMIC
	 iQ921w3mC3Z/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F331E6FE26
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176650823357.16035.12755901955775736849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee70dfab0705b4e3b760056637d9ebbfd39d65175babe897c4d74312ed66d966
Date: Tue, 23 Dec 2025 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766508233
