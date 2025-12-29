Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEDC5332EA9
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767026033; cv=none; b=fC1WQSeCQX/7k3sQ8PFLkd9zVHhT+U4YE+8cGviaWnPkVVpci0zDYFP3NMvxfbOn5tmuKPxfq1YIpPyVdLZ6OcdPbIkMrh3uzANQ8JUkQPv2TKj2ptuJAKJYSL/Mmb9bsFWNNXwNZ8gihgFM9rQZoevhqL5y7mMTlfV+OMSLTfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767026033; c=relaxed/simple;
	bh=8U1q9HIjiv6q5mqc5/+GWyHYiFJoo4ysZARTN/CJfsY=;
	h=To:Subject:From:Message-Id:Date; b=eVKVgFHoed4GE+fAS16BgTCFtjI39E2fwhbRQgZ4xT6xC575HXzd3buQc8yWeFkRELV4GDXGlI9UqDLCRseN+Z8FXAxaEjCX++Z2Srko+NXz8aGSHVv7+VPRBProPNkyM1+iB86B43MbmLmE+yV4uGg3GZNc2bTT2faqtA48EzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmbUS6de; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmbUS6de"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F50C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767026033;
	bh=8U1q9HIjiv6q5mqc5/+GWyHYiFJoo4ysZARTN/CJfsY=;
	h=To:Subject:From:Date:From;
	b=hmbUS6de8ce7TniMDt1uMaL86zLryfHZhH/IVeqpvSGMpBfcMIwCJITBZXnXbiOdK
	 1sCFTop1oPzwhd1zm4BIzjwUivH5AwBsrRvWP+YWgVCm9u0KMR6iAU4LohWf+xzpcb
	 gwTUi5GgKuoIcXZcGaMpXhKhItnpu0n4irNfuMzh9Pa9Oqt+MtqveAZMPk+/TKlmpx
	 Rer+RnlTKi0okyqIHk8PyONLmUp1vHZq30S1Sh1DYsadbfdMwU7iLfWyR9EZ8JERQY
	 EEKMdneV1cLwIDRso4zc8NW75OKbDe3zIhWPYlN5pGF0ZxRnx882V/7QEjEAQfbWIb
	 3yjGjqNwvseOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9339EE92734
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176702603358.11844.10377942010694457934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d3c33ee688fd01ef848033135f54bac7e58f804afcb9bd95ab2c090e40cd182
Date: Mon, 29 Dec 2025 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767026033
