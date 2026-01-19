Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E643F31E0FB
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768828434; cv=none; b=e1uO+e5qdxNhuP+VGUki8xOJ2f3oKUUsHDzA6v0NJWd2S47/hSbph2+TIOSYCK3FMl+O3GCg+rJVjkJ3tAeKXZ7HVE8PnuungbZB+LbBWzMku4MfAYlfBivCcqk7pd2J4uFEzRyaUNJoBl46QiCk/RVGIJkhhSyDYt6D8QUbP9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768828434; c=relaxed/simple;
	bh=mzC49lhOUGUm532e10o4c4FWMYqN0f+9vpcCwlvr/qg=;
	h=To:Subject:From:Message-Id:Date; b=uyDq8jncVVOHA/3uKN1lnaP16OUjBYw1cDbywtZcIj9M9xQV24Htohcwy4w9ldtIZb2Bi88dx6D+9KhvIGykfCs6FTCdEWo8Z68zlYVnoncVeg6LLD9A2NWX+ecdzQ6AeFm2M1VtNxRPyIVlSslKcd8BDc/A3c9doKAAS5ipey0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHykxvjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHykxvjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCABC19424
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768828433;
	bh=mzC49lhOUGUm532e10o4c4FWMYqN0f+9vpcCwlvr/qg=;
	h=To:Subject:From:Date:From;
	b=tHykxvjU4Xyry54TWLARlIPoIvu7BLFXkDjHU3U0hc6QIH+ljOJkExysKkrp/yBjO
	 iTZq6Cn4kSekFk8XPf5r+uvQbAeUB9VOQRc+g7OobbfKwbC8kziFeEC77/WOUQGphK
	 47Bk/BSJJ/vnOgFAvtA+5BdQFbb+FQIkBTTVtt7gFcSV9sjmbJbNwkxFOFFPg7MLss
	 MYV3kw7t/Q89AHgKoY/hQPWCQ7tIxmXMken68b4OJmKeN1wj9/zHZCJFvBjlS2w4cP
	 cYkVn1UlKIicwGgm+MfunWtUqbvMBxafqNrosMNVzW8N8ysC3rpZoV7F4FCpKewpCM
	 SrDG3tWXcIgbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFE9D29C27
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176882843358.15833.12143724120215078467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe64112a215e08bd079799a2e846ea88f25a9de590cd88bc8c1a8d6523acb4fb
Date: Mon, 19 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768828433
