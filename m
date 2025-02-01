Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408AF85C5E
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738426554; cv=none; b=h2/LyMBQQCVc6V1vLF3CA3e9Ja54nPV466FmMKf4pZuTM+IcasT0V7DI4vflfzszfsF2ek01A/VAFcH4uXdSsp8UBvST+2a0ar0MhbLqVETDHS/BkP+jJhYhpwyQVTEezw/h8g86VDEKP/oyXlvSbAAn5uOGJKL4wPYGBuWBmVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738426554; c=relaxed/simple;
	bh=+nfqPo4m7/+/YMfPJRgn8xDneJUA+GlllqtDw9onrD0=;
	h=To:Subject:From:Message-Id:Date; b=c3uCFP5CIU1QGWaQbZTpZC5YD9Nw7W0a4W+5XVrvEo3zNbnQOkUytf55NEO7c6SRornyHflwq2829hGQNH8a39XiXB29fuCGL7YJz/sHxjWDhzuXqyHQHhbcPmJz+CCFDldCOLB0iETfVYDMAgMIzRHxYXK9zIlLqWKo1J26GGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNU5AITW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNU5AITW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5AA7C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738426553;
	bh=+nfqPo4m7/+/YMfPJRgn8xDneJUA+GlllqtDw9onrD0=;
	h=To:Subject:From:Date:From;
	b=oNU5AITW0A2s8iAgduJusJEuXBv5UWJTTE7b2RDAGQpetcZRWtyS+OlQDWAi+SoPM
	 K5/SBYFh5786UmsRNbgtUA3euHhOBn3Wprsq821fIawdKhELOZbKCyiP/fg0V5wcnl
	 tBuot+UjhQTTlMq2V04d8Sb/DzjpCQiePYCjBraFzNLrAdOKGs9awfcQ1v2M2fVX/o
	 v21MdT0l/BJAiJAv56L0RxtoFlr0b710FJpT6rFaSZV2I7f+p+gXKptY/umHn2X3gj
	 XUyni7R8OcF3RoHAomwcFWO7EtNb62foTtQ8GRm1F+BU718qLcV9fnsAyXGdlhn3ow
	 hx7WycaLlpElQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A17F7C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173842655365.31114.17903620428782560902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ee5cfdf5f12587b637d86e141aabb6ae91a1a456bac8002d55cfd6d851bb792
Date: Sat, 01 Feb 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738426553
