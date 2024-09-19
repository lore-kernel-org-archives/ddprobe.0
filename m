Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57AD1991A3
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726746953; cv=none; b=ViBLZFnUCT74tQMEqhtJgqTWuHoO/5DwsRd7jtA7/PXzg6je7qgcH0OPaAhNLVrcccmG5c2OI5PFO+lucSdGOLzcIolr2o2ozyp93SbvOEpMFNgqOFK5vuQ845Hzdof0n54axnRE3QZkdqay81Fmivlqlom3/DdefVkpyUBn4Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726746953; c=relaxed/simple;
	bh=IJUm/yGJUD3MjEj6qVgB+FhqGjD2YRg+uV7IH++bZYs=;
	h=To:Subject:From:Message-Id:Date; b=SNwYpreiyz4Japlgs/SIgo6z0xz3ZPJVMr5/+BQ9mu15Ksso1zt1sVli0wBYRyGnt3CatQGJm+FBY7WvjYhj81WjqQEMYhlZpNXgv1tsGM0vN5edwqH39tVCHBO2+PT4D6RWEX1ZvKbmk+LHcGzO8PxcPUB8aPLK4uxaHZ5+t/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQzfkB56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQzfkB56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3613C4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726746953;
	bh=IJUm/yGJUD3MjEj6qVgB+FhqGjD2YRg+uV7IH++bZYs=;
	h=To:Subject:From:Date:From;
	b=WQzfkB56hIduGSKuhL98VRCIkloJQcvF+3vkIt7Eq7Eqz0vbyBfOVn+mgOZAQYcyx
	 j5+WcDVzBPa7RAou+agg6Sx0Q4LVJvi9A0+3rl9Sp/gUWzs2PDRypbGT676CYCZcyB
	 Hqg007rEN/8Jz2b05GIHKDa4PImUCh9Ij5jfHozJ8xqeGwM5Z2IEP5okLqUUrDhpgb
	 cwN6hp2paoH/kilucfS7rrD9X9dX91TUip+5aTnrOXfcgmO7YOKlXmcQWIj7kIitXX
	 /E9z/GBNIwpaoq9R8H57eGHsYDOOCcTLWcfqe9flGYcvwmbibdShaEmSAEFwnVZd7l
	 LEtk7QWr8//wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EB7CE8D7A
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172674695360.26581.13951220226855424883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 127af18ff0ab99446e39368e66cf7c1ec7d2a87c38ce62eac701948340f13546
Date: Thu, 19 Sep 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726746953
