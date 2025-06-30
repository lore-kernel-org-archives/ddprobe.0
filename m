Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9314A01
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751261394; cv=none; b=al9DDUW+CzW+Z0U9LEAr9LTyz+rLcRsnTpqiNXC56Jcoy9kergtK1ycft8VXp9N7fq9dylAByjuM9BpgXmWVqOEBkVAovBSpKqpiHEGf0pg6HKTJOf87nkDqH3GDi5amPmGxyRZUcLxDAHU4SoUektHHDCSN3OWV5sJr37sYK6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751261394; c=relaxed/simple;
	bh=CYs5KxwhMPa/qA0Lz7lRFCOHbFkkacmp+XLHp56nFEQ=;
	h=To:Subject:From:Message-Id:Date; b=LhBtAKjGZ/9HQrcgd1RBwrHmiVVR0ZCl7LRUA6zUTIO9sST0gx/VWGi78DOzIQoB7UthyKAJQMpnI6o5bARHNVyO2NsymZkT+wJx24JKai0V3iZFaspVHxhCMc5eEGpK8EUQJfwWa/kg8uBfLugXzlEbDSj6auIGIjAjK3GfLcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gg9Sd1no; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gg9Sd1no"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A177BC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751261393;
	bh=CYs5KxwhMPa/qA0Lz7lRFCOHbFkkacmp+XLHp56nFEQ=;
	h=To:Subject:From:Date:From;
	b=gg9Sd1no/k7rbLLYWv6wnsvAoMtcf40ymJX8qM2UEnstsM5fABdAPllWXZduwwh/m
	 GrOrxVPS/a2BDSGJMnqFo8abYt7v7QxjAbLCBpLoArurBEfdOPcOgXDuhOt/Z0C2W+
	 +KAqk/hnO3Weiv0oFLyRkOwcFBEkvc+hBnok6kFDeIuanQ6R2srK9pEUv4e6Zy432y
	 Z/lneWscZxxugft1byceOAAffZdqT5Y1d1Fjs3vDGf2RNDvpY8dKRxVUkapfZAtNCI
	 PrTm7TwN6Z3PtIOaFsQvImdIipQjPB7bYWzkcQO6lvkWOZwk/hjwTdJ+mE4CRm3zxw
	 TIQijrdqXYr6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F7EC7EE2A
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175126139358.9745.13772628731127317020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136edd566282b3882662d2a318fdf040e06d5285dcb6897834be088a55791cbb
Date: Mon, 30 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751261393
