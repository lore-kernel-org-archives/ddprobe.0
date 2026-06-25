Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290811F1513
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782429454; cv=none; b=Uy/9f2PB/KTrk8CqFdwbvj7QbAX2wd8UdQVc1iyFwy7L1N3t0KZ+cXPAxAUuaL9p2CbBC2HvHL9E3N+q6Eu4fxE7ZZh5eUFKuacDpJFN+cUBoT/o7gjuN8SKFmbH7sGjXO4N7ANoC5tFctoiewDLjWtPl23H/nbjegvAJIw8Y1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782429454; c=relaxed/simple;
	bh=ZjjViQms4Kl5dSBeGtl8pykDMm03Onfp4wWUWoTyYaI=;
	h=To:Subject:From:Message-Id:Date; b=A+K4Z3sniuY3iknKSaTG3nEgZpvT16HS/rH5j+vPwqJbKxoNAFpPu1g80cTMdpeF8G2JLneDrWM+Ebzyx8tWX2kfcloZ6+I8Z+rijgCyxU+K9i3UJzs78fTtaXSKkrZE7HfjEMVJ0fFazWOsJgdd1GJS09d8aaEEWAZ2FYhUTaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SW1RWZgB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SW1RWZgB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8EFBC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782429453;
	bh=ZjjViQms4Kl5dSBeGtl8pykDMm03Onfp4wWUWoTyYaI=;
	h=To:Subject:From:Date:From;
	b=SW1RWZgBGsb0J4SJUo6f1IOvocORVVWU9XooPYi2XB57sFIFw3vFwMyh8XRn9MBiM
	 F+dOKZD7CsWHnGddH2CbPjblPuWQAwmmZNGkZGK6TgPhg3GahrkyCzvkHgUMTHlfcA
	 03buUUjTO3TH3K21a930TwSLPL1J7lHE1Cxg+7vxvfOHV5XYlVHra9ZcmGfUeeVhEl
	 Re0VgaEjlPTfR6UuLGKb3m3ndhllewdPd5+ttuEe1yTTGxXkwZbuP+bNGliMyLp9qE
	 LRZG9RBFvnRutZanntMzvJ7RezI9y2UT235bcLupOm4gkUDzdbo8Cgnx6Z0erBzsUy
	 FQUI6SgVd5axw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3BACDE00C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178242945369.19911.5831197942702569073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5936ea91f0877962025d95e1c5ded6784736d5449ed6b49540b519c0b2120d3
Date: Thu, 25 Jun 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782429453
