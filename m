Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198274A1A
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755890394; cv=none; b=JND4w7/ZGk5EE8iYWVZf5fkS/zQeBV3FK4sT7ESkAFZ3r82WbATrcEDhobD5bxmgIn6Hq+GGzABIzGDulJCcvl7ZpWBVOrEZRnzAiRjrGIlgRtAXFQhXwoAjdRMlNF9nE0Op+90XuPibO9vHX8yx1jpbMwyMbOlkbLyuCPr0J/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755890394; c=relaxed/simple;
	bh=5IHjRJOsLek9Sms+P2xH1c5JfKg6vADjDT9XR/3tuwA=;
	h=To:Subject:From:Message-Id:Date; b=i9mVvixBUXiKFS29JM4620MPyZ0Cokkgnh7/Kgx/5Xqiah8AbDObNUXdR/zETYTF4Fxk86vQO4KcSCWppGHOIiOc/ZOIknYFd2dhvGXUQq0akJ7WAmvvsx0piHvAJOl3s0Qx1oRKHEs2hY4fhSXkKRqTniIiQ48XPzcEiny2sJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7e63U1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7e63U1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EC4C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755890393;
	bh=5IHjRJOsLek9Sms+P2xH1c5JfKg6vADjDT9XR/3tuwA=;
	h=To:Subject:From:Date:From;
	b=u7e63U1AfH5bzLrho+eI5MIiH7BW6AT4k6zalZ4wTvEJiZAl4Kru8mFdJB0wViGjm
	 LCvavnzIq2dORt5BCnUt+7xqPh2yFlxKn/qWrf40WWvJM8qAAVHg/FPQpCQZJw5EyT
	 PUWG195d18QroqZZBePIU61T5si8SOw4biH/hhsQE3qaTqUKsni77T4ZZjCkpdg213
	 wujAh5VjJBTpvf8jkvqlkEh2LGpUAc/CpnNlZl7xZ+Fru16fm3WVxEeE0idiuug1NJ
	 GYuvAzlBaIvJH1Tnb9b92+5gq1q1NcRtUWPVtrwjSW4JR+t9h5v3IGNA/pH0nyCunJ
	 usYu5YN2a5vRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93456CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175589039358.14247.11022822510894944971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 428bf7f53990ac41ea36edfa21e490b77c2ce8ad916852e28eadb02ee40e0428
Date: Fri, 22 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755890393
