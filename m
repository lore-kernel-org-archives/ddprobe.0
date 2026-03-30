Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143053D5672
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774878294; cv=none; b=OUOkp2yWbwLk8CEdCM4lh+cBxL72K44gtl+45Dn6rDxEAEyeFWRXkh8t9wleAC/n9RU+N5MQmjVK9ZNfYOu+fvE/KFdDWWtrHl9EdHTSP2ptlLzb/E0r8I0MA/Qa3TQtG//znWCHurXkn3q9+WZFhYBnGwQFLP8XXG6HMI1zTQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774878294; c=relaxed/simple;
	bh=jubqtdnCmnBzLa0tW85zRdkzOS2ucC5GWllmCVo9XUM=;
	h=To:Subject:From:Message-Id:Date; b=obVQUgu7HVpwHEybomLXM9eU3A2b26V/t/OjU8PrDQ0IAeDZ/f5u/itNnSovWOanaIxdlHagzjRF8QFR3w2UU82Dq8K3m65zlDQiI2E7ha/D2re+AS/SZGj31k/Gf72d3+jmw32LJ20pVWHnjJnb2JUHmnTWsK56iM1sNP2PXUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8H++JFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8H++JFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19DAC2BCB2
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774878293;
	bh=jubqtdnCmnBzLa0tW85zRdkzOS2ucC5GWllmCVo9XUM=;
	h=To:Subject:From:Date:From;
	b=u8H++JFRAfAPPtWnBcEEyEYU41Rsh9BKXE4Uw45vmJ8P1P4Deqx28XQ54dGvqGeTI
	 DRPt0HN7qEkeEIcLGClnA/YbqQHrsniFgi2X1cjLQcDarVloIu4dgDoZHYY2WQ6I+N
	 /ZI9yQADGsZ1+19CYi1RttVJYI4r5Nw3n2N4Daj3/qEca9kMfjN4BVBejuyVzwN5kF
	 5x4NUdcbisrT8cJY1BUoT3Sk/qVur+vt5ejqaczZJKHidgsuTiNpRvZkoKUzmhPHbb
	 SPgOQPrJGWJuYwj2D6r4FYA5M7peCyEPBntAgHaDRtx/6N+Uk/S32eIUU87PhsZY38
	 WeuYF1WC+wRAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D6D10D14B4
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177487829359.12313.16207972423217218989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d8012df870de73adb2f1050aba64bac9c80b8214762968477d85feb7dc3e3fd
Date: Mon, 30 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774878293
