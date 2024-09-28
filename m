Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393BD1537D7
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727506554; cv=none; b=Yp/gE8JEIwocvPktLCYiFNWC5RcvXI6d+TKCUWzBJKdVTzf0UnfPl6wY23IKdP8sKwIzoApgqjUeoVR7JRJatRNmNhf+NDOm3oKxl6EDedV0OaStzTJS3CwAkQMcGDCUso661wLIXenJxINL1ElUh4oUoRusP/MRgU/dzuakc7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727506554; c=relaxed/simple;
	bh=/jigHE9tDlOBZs2fSkvv0ijcy9eeVsHu27QrooYg4+g=;
	h=To:Subject:From:Message-Id:Date; b=OoBpbZ40ZOzOpb3IetB4hE5HwnRVzGThHY+DEmg9YZKbzYAda/wAyKO3FJrhRA1YmfcS2Gf4me3nke+wMO1FDpAEwqraym1ioI8+gn9LleVlyeLVC3BlSwP6F+7FEQtdjaT8sZauoq/mF6LfD7mTomsiNPGH+5JUVPjA2WMBQP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXEpp+tF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXEpp+tF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEC3C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727506553;
	bh=/jigHE9tDlOBZs2fSkvv0ijcy9eeVsHu27QrooYg4+g=;
	h=To:Subject:From:Date:From;
	b=KXEpp+tFVPKNVZ74jUwXZaXVPD7GVlxc9MCy+xR/4Zr1Ae3dqd61S88TUmNgfi7Yf
	 rgWI8G/I7j2j2IPEOcJZZKE4A9dZR8Q8/wA93rExurIWctJ/jxKrZOrozUTzU7pxH2
	 eQu7xZPLD8jXPB7KnHUMOAMKctCcYSJdjmc8bIHNaj4YXvC246N6pyJXs/vlI7N/wl
	 Koln6vxjsWSpGiQJK/23HpwmJyhY9eXOrBjaxrZqg47ScIfpk5+JfebZgQwPspU/78
	 2BdrM9aOeDFNmQeSn7eSXq9+7mFdMYC7NzOjNDF/m5ijHUiDNhqB1Io5vGcVGi+RQG
	 5lnXs51k7YEkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997B9CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172750655359.13432.18179267666304667826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0430d1aa730241085a56ba3672959a778d06577041c5a716f3d7a6b2a5f59b04
Date: Sat, 28 Sep 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727506553
