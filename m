Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B3E38E126
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774511094; cv=none; b=iG8FUtkRkYKlK+AwSDac6fqsFDqTmQJr8HctcI4v6ey+m6AOC1fz4U7iq/lj2mCM07bz7fWeg1WMUKafEO6LNxjX0alaZLPImVlaktwzH1oa4xn9NWicy5Yitt6ue4o5fZK6ObyFPIUfTdMEo0GZDpYdXGYGGOQkYlEUzGUI2Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774511094; c=relaxed/simple;
	bh=1F+DGp6crw0WWQQH+ilvCL9Uj+9/QVkCZdH/1tzl6mA=;
	h=To:Subject:From:Message-Id:Date; b=lc604K72ZzrehmlU0magt11a+VQsiltOKgsPwYqEs1AEJXM06udLlJRoNaCNOjm0ItJs2Rkeu2zqp4FTL1YGu300hdLh/ZRPIDZ7elx5Oor8BdxBKuci6tnyYuuS9SfGMD/Cnmo9MU3SfL9Qk7Eg4n1iHsbKtRSRer7zw/bmc1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ia/nUArD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ia/nUArD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6370C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774511093;
	bh=1F+DGp6crw0WWQQH+ilvCL9Uj+9/QVkCZdH/1tzl6mA=;
	h=To:Subject:From:Date:From;
	b=Ia/nUArDlWVkFBrYduRfAR9FBEKeyI7cZ54Kt7JgQRTuBcqIlA77Ov/pbsekrXC9K
	 KpWJhI9N1zAm5Km70XCUdlMZKdvd7TBO3Lz/ObkrKk55ySSoF047y56CJyvdFKDjI2
	 H45wclrKwcJd+7K+9bbxeMn6iFW2ay/5vtTK5fgbpEa3mxbLtX/z0IRh/frzadFast
	 pMykEWqPZrX8gC1RlDCP1J/EVQsBWvURPYbVz0oDDLW2UU4aqcpTjWZTWMPAkUfcL7
	 cwRDqRtU0rwawYX2DqajPH85Xfs+r3eOuBMWc0bqjJvOhDZpEbXWBtmtLZeU7nttEP
	 P6J17f2EWxejA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9201C106F2E0
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177451109358.7666.11342930918515900970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70efbd458bf9bbc002b8624202d8a40e65ca8a03e1bd7c5ff8dbd652b42cdb70
Date: Thu, 26 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774511093
