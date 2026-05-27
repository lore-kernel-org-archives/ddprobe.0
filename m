Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4506547ECFF
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 18:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779905554; cv=none; b=KPf4HHGrXaRfjSbhXIdzS4E9jdiFXJbvsXigcxQrmh2OO3rgMFW6zM3m6S1Xo5fV5xvro5SSXUuqmNpvDdWvbC6CSBH1L37WBup+yNOMukTZD//t3FXecewndg67JTz3yUY3p8x/RgWEeJu52iN6LAPxzq/uDFl1oKJxnpaZDKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779905554; c=relaxed/simple;
	bh=F1JmqEwhwfQuzG55+RKSuFzvUBQmyX+P30bS0moE19o=;
	h=To:Subject:From:Message-Id:Date; b=B9qVjuOU3roz0z4JSYq+qjdB2MfH7DrAOPkUh8wffTpgD2O/X68s7T6oO2G3mV7i+zfjDg4T/FD/CVlKnrl2o1Yh5lQ4jhBprtk4RXQmOVewj6Mru0o1oznvi3k4RcR+X6ro3wGMRztlOpQ2wpfPEFtPdjN0Yr/yti1p3ITS9B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0yuJ+L1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0yuJ+L1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB636C19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 18:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779905553;
	bh=F1JmqEwhwfQuzG55+RKSuFzvUBQmyX+P30bS0moE19o=;
	h=To:Subject:From:Date:From;
	b=p0yuJ+L1B1nKWSfun2G0JlVWokrUjyU+SQzmvl6nlTBJz2QuTHQYXe8EfgKoO2+m/
	 GEUtmRah+zMFagFd/AYhqauCqjAQ+87oGbHZrAJEUGTBQi1P0dOa2KuO9GbS8hBr/p
	 wUeRqeuwqC8uzcIdxit/FlpLuYJSzzHwC4FM6w7iaLe2Oav7xWoq3Xx8PFfwXSj6cc
	 rG1qoi7OtoLqwHXOHhDFrN+8ZL0knY3smq2RjghUoTZ1YDgWyBi3Kj0YRFbWsSJlpP
	 VTDW8GE2q7U/xZFphUV5jEeTHkvAse/Pw6tZ+yOx/DMz3ZC/TkeS+mj5XRU4SeTdMq
	 CMfoDbFJZwwyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09CDCD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 18:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177990555375.15768.569403402880966642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 679828438de074a48d882e5723878d7ef86b8424c20f6ed839dd8cf190f785b7
Date: Wed, 27 May 2026 18:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779905553
