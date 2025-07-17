Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25467A94F
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752791394; cv=none; b=OttsccXHeSa4VhfGtCWWtKpX3h9A+Usg6ZUG54JckGolwrX0T4V0zcuIvAnZnTgqlNpWsIPwpmxUmY43AB5ToJe4dR7D7epRiMmRFkSO9yBw8dtlZNH+v0lgXwhQzSj2r0vsfVafiN0oBisI8Cuu+VZMya8bJM8jgNmvbEy4gB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752791394; c=relaxed/simple;
	bh=xV4fYloC/scX8caJ3AQ5KGpoXH7w+4xV0ieYoe7Jt54=;
	h=To:Subject:From:Message-Id:Date; b=kqzY95UWvY3eq+Lq/mn1fIgm/XGNsR68btnrvDJbGVcofOEbS2ADJkeRJx5jdcLDRpof3n3Gj/zURTUmOlPPFNdK+CvpuezTM8JTJ4gQakZE8tEgmTALxTy00h6MUjs9qXBLq4rtGJ/JG1n/lkmL1x3jf0HmqFTCDPLRGv1Bkzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWiMovfB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWiMovfB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4608C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752791393;
	bh=xV4fYloC/scX8caJ3AQ5KGpoXH7w+4xV0ieYoe7Jt54=;
	h=To:Subject:From:Date:From;
	b=RWiMovfBGJa7Mbzpd5pLKHCb86gw/zW+bIFQgJYmsx/nVIQ887ZA5PKWhQBPi+vxq
	 iF2GatXSZRiFhPZB6hCax1GNlAC8WrJsE2bgBJzKd7e2XortxA3APLAAZ7WFcDi7Q9
	 3dhuR6VKbr45+keJNchbNifSKabaMZiu/PBfXR+wBhZ515u6WtWNyWNysXbr5nMzye
	 pyBYKQLeiMS83cLJ9vAkIuEm1JBfYXLvL8t3ZNUrbY2u5CSZdXfQTg/8XpGUzDnHgM
	 59088O7UMEMwHb5pK1cwNE5QNcaqRXaQeUVubE7X+KX1MJiEkbwJ0Frxl7hZHi32gU
	 +UB2ho6t59K7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91016C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175279139358.24049.5506319402576955113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 789104baa3bf827586580587fcd245eda948a99dac6bd459be005683f601f4b1
Date: Thu, 17 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752791393
