Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12484376471
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771355694; cv=none; b=c9UAG/HilME+rw+KurwhKwl6p2+Snol4GHrPHR/k50jkM6u/UhTGrmNvRYOs2tLl+sWamv7B2kc7tnZEVnTEmIQitQvQSoL8gbhgZtkdFiv8dWRdpYoW8/ehpS0l7ks4oZLgk0vbjTTVUZk1mciuoNpksauQUI785vxPmif/aGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771355694; c=relaxed/simple;
	bh=w/YAyWK3pMl6U1SWYtJ6RLCBvJ7Ygts8YsEL6+ublfM=;
	h=To:Subject:From:Message-Id:Date; b=fCNnyaWDb6K4/8FiU5MP+49Xt/6io9nJdOcLwgto/CfAdW2IFU2uXw0nC4Tj90xAisn00us7ynQHNfryjtdCFG1zJCshUejYTDl7y2xPKC4Zb0l4GqeFXG9okUDzHA1mVskmEqUdXtcN2s9+bVnlBifguyVMlH5UjQLpW3Y1KmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwqZM7l6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwqZM7l6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A1FC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771355693;
	bh=w/YAyWK3pMl6U1SWYtJ6RLCBvJ7Ygts8YsEL6+ublfM=;
	h=To:Subject:From:Date:From;
	b=hwqZM7l6EBB6PxAe+ZAQquOUSaM27FZ677vv7fJR5HRZZfhDOY0fCkofvknwE+Ceh
	 rHFHb2HXvlaUCl8+JHABPKmycNh3PUM2e+PDyxwl0TOFLk0SyYPt3qn+ZN5I7NI/jI
	 oOnWNwm6VmuAex8v4T57ttUdT9nkFuM3f/NUCjxmvcmjLzYZDIGFQRhAyZfRKnavh/
	 S4zyXrkgLV78Pb4UuWyFtXpBhHOR938LykXes4iqIqzZb3YMtMdVoj5wLp/Yxr255l
	 9rK/Fb3Jxy72PF+IKpPzn9ciHBDJphJ9C3tlfzaI0wz8rd8cZdFDBOdojzu/vjMxxS
	 cZu10n1NtOARg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940AEE9A037
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177135569359.32070.12699803473455104943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d99a63506bb08eb5b6bb2b94e447fce03d50df58c02e12c1ec2751482db7f53
Date: Tue, 17 Feb 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771355693
