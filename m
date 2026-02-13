Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8F0C221F26
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770988493; cv=none; b=Buh/SdiEXMwxt+VnZJXrfCg7AmqJA6S1p4fh6MrEq1qdGVWTea+rcy3DfGCxPuWMot7+qjGE8a+Ved/BdJ+k5Sk+ZZxJMKx8tJTmdkeziIpllLnNKPDPXXuH25CVVrH1IJXrm2difoVKMDgsbyDjOhnRDARxoaYMTI+QhpQbYso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770988493; c=relaxed/simple;
	bh=ZoNb4OAeqJsesjs9jhUQYAwdHMLbvg/n6ah2rmKzlB4=;
	h=To:Subject:From:Message-Id:Date; b=aQkh0ITtmFdlkCDwtg2GHwdpxhH6lW9UZikfnsh+8tpudgG5yL60/FqXJ54YISp5P3FLr8TATo/iYMxfQZoMEicrQ2iE48Er0EUjruH+osjidn4BDhzF+xV83XiDp8Kq2ePV7ncBamKfzOtEkcBF10kcEO9GqahnqEW0F0pjG04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXqzXP3U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXqzXP3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1985C16AAE
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770988493;
	bh=ZoNb4OAeqJsesjs9jhUQYAwdHMLbvg/n6ah2rmKzlB4=;
	h=To:Subject:From:Date:From;
	b=iXqzXP3UGuUIHKqpnEnf9PrXt7tkXlPY+9QJVwVm4pOGH1EA9LiJmJx0icv7ACxPh
	 lsYlApB4jQDheYE7pvVNWty5kjCbarDQDdPgeN9s1/2Jvq7ixi+HlI0HIe1YvF/28W
	 83b1GVQXzYsfxOQ82EATIcyUHsGkOTGj3nW8yXx3DEuA7l30rBKBrGO/hmaOkNDDuM
	 GxVjDSDdVzE7dskUX4NWnw82WzeGbeS+WgoaXWTVyfqTpvIyymO33ytOfzOhA6/zdL
	 bQh6U6NiR+mQ8uzlfZFLqi+ugguEebrq5l0LC79Y4wOShRWUlWrfW2iD4k6Bh1ojAM
	 msY/BmUKvRDnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980D2EDF15D
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177098849359.15129.11712830097806590090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28d984609d173bb6232a18e7d391e93f874cde96c8175786b60bd4363b5b186a
Date: Fri, 13 Feb 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770988493
