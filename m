Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573B8393DF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789377634; cv=none; b=sI/GQ7qmzvEOzfTob0OAVs5MeMPDV2tLgXH50oCLjIplYafoomc4pgb0mt0dJCzD8E9lWAfUGbcvODJ60m6bMoYTiQJra/AXtSa6iJos27QVG4yTCB2+2Gjc6AjBRr5EV5Arf5ygM3PUXmIuySght7qqeKLJa1rz60Zz3WJlrf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789377634; c=relaxed/simple;
	bh=Mkb/AQECd2+zLiSVqHF/ipE4YagDzkyT3yYn3nlZLbI=;
	h=To:Subject:From:Message-Id:Date; b=WyTwun1grG0VeuUYRF/sYrKLJA+QLxcZg4EGt19o10YfR+vDwV/TbSs6jFLwQUcZZfa8xwzITLpeaMleRMZITMKghVUnQURCWdWq71Mv1J79etqkvuQcprePgBAMcUxOZi+HqU8Uh8HGAQjbB7FDvObyVvn+u7b8+48xRSxvxL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8Y32fcr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8Y32fcr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD038C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789377633;
	bh=Mkb/AQECd2+zLiSVqHF/ipE4YagDzkyT3yYn3nlZLbI=;
	h=To:Subject:From:Date:From;
	b=O8Y32fcrtKDEAdYScz5DvVGXMzz1LxEbNPNAJcaQh8e+XDyA5J3fyzvov3uG713DB
	 YCBnXO7UKlWJ6TWFepPe7e8S6NJC8+R7ZDsvE8cG1/eCZXfjJ1hxZY3v1ovjrNCdQp
	 o+bFfwsqXeHRExKdfeyYnT8m9yp0JJZ5q5pVkhtu940Z90XVjWEUg5E2As1o91Vum6
	 llEOfcupW0Wpkmu8sQ+n9RFE7MS+Mo+emYEgaF0D5kiNK0JqZwyswAtIKGUAMJYKz7
	 /l6nuv+3Oqr6H27NaQYRtwZyQ4Xvha1hC6L5r0el74qc8TDwkclF/0es5zW3Ipq3D9
	 JTLRo85WFLjIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F4EC88E6A
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178937763368.17230.13820748218736354484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c057435049363a509b410807908d24f452f5f99b61ba3dede857da92867e6b
Date: Mon, 14 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789377633
