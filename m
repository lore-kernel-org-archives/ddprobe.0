Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213F3311C35
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777072054; cv=none; b=FqyXsS8TDhuI03UrGzJGPZsnZpjC+mt80rjFVp6jLzWZIebJ6tS1O2kAtuhs6cMt8a3mSJy06XLhVtDmYj/M/+GoRSr1XdCRYcJ9HgWsAscsczplKKjpQgysBDBpMbSyW1Ju9HVh1/3tJRwrBm1uWYa0CCfHpMN73GN4KaYU+LI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777072054; c=relaxed/simple;
	bh=QlR8kMFh4CE5yOIycZKAXEQsForzJwZUOEjEtcjnBxI=;
	h=To:Subject:From:Message-Id:Date; b=k7HJ3+G7na2XaH5jzweWWUHPmaIpRRhIrstzptZ2Tz0qWQTRf/AQzX+C1Spoha2PfwKkVQhV9KpxmyKG3sHAbeJlZDDBF88mgis6uNMc2HUIl+2XDqlt+lCWfdnCyRmDp21NvHc4RybzE4PJMhwgKoysCwEvARLo5nv/yVDozDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8shtVca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8shtVca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC767C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777072053;
	bh=QlR8kMFh4CE5yOIycZKAXEQsForzJwZUOEjEtcjnBxI=;
	h=To:Subject:From:Date:From;
	b=c8shtVcaQFLpIqdSb/ce4GalqdNRg2lD/AOhUVuiMVO3bHl4jyTBMq62K3NPtZJC7
	 TZt3xOVwfbcCiyhp2r26uKpVIAEtgc8C3iUuBZC5mSbfQUM0P8a4MGslMmgZzmLJ3L
	 xhIlx3coSwl/8coVNyTCUHq0bgCD4AjUGCJWW1KcbdfYk5xjclXydskdrtOFYmPLXe
	 dMCyq/Y31Iii7a7vyOQzFu8L8s78TRVxcCKQF1cW2OsP4CXisAuNKt+T9GjkZq5p+K
	 yBh9z9qq3lUkxCvdBnUbntYb2BCxA3sDOeIkXJf7tvjIdbrOcoeW+WMHfjHpnK4sPX
	 QTeRK7a/S9yAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FDFFF8850
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177707205368.31317.5690136286854541879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e62e073819b8ec42573c88149b0adbcd4455ade320d1e04708bda21d6c060dc
Date: Fri, 24 Apr 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777072053
