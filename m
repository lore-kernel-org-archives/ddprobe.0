Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70065692
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F170C433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671127287;
	bh=Q4Z4Ts+Hh9X0oKUBM0EsPwxxv6U8PozPIiOZoLKzJKw=;
	h=To:Subject:From:Date:From;
	b=dKcMidkBnznHfy1a/edvTXU09Z6MBtWN6WokcbNJcUK4O4L4XUgAf1AwKUwy4DxyJ
	 ka/z8siYoCG4aEw+dTFiY0JJ6TYztbaiLTnpZM/6zkfkFgOzG/ICPWtupe9cpXoNl7
	 J5x6HLwawFy1vURxlI4utLt0LX4Gqh1jpB9b9xhgQmxXIQISqhqxaKJd1y5F2vRVxb
	 pm0AV0FsRA8uuXBpK+MxfwTrqFfvK5xcmfTy0+7Hk4gdCtke2YQ4cZFo3IIiC284pY
	 6H7sKX0uB0bJRKTM0gqaQqzJsru5H1fvaize4G1bf5U7jiEK56olFyfUntNlNSaGxk
	 +oKjwu0qK4Mhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67C53C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167112728741.13251.17778520766534984404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0c70a3992912f0bdc56251d5f548ddb2e666ac069aeea676c8a35cbd26721da
Date: Thu, 15 Dec 2022 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671127287
