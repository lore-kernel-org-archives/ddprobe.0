Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5288563B9
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 09:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783849714; cv=none; b=ZtKG31YFF9+6f1WJAPWMV3A46Gjvkl5GgjDHjLM/HQslQRfsSNSoCkQVpbgjC24HWIhpN3kvuCfQXqneA84Y7JN5Q8Q4rQVQNNKeVbsHHjw+h9cHlW5kGs1wWnsuvJbjLcHKOrpHZDvSUjzjRNMCESoFMwWAaxkJ5j1KfHEBCjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783849714; c=relaxed/simple;
	bh=5wk7kf9/zzkn6g6A6YqnkQFISjPZ2CmwDsX0qEv4ZCk=;
	h=To:Subject:From:Message-Id:Date; b=fxPAdwQ4cVrTZSRnGQUKHKIvNes3515+KlLAX6FLKRChf45NIAGMh6Vs2SeZgImdjlxTIpyc/XV0jQlL3FRiiQ0RGTFyWoA3PneDucx7RPgtrhrlYN8yLjkrmmJgjk1qq41ArbL/WcyozbzNJKi7HXVGeKODqjYe/KBBzPPXqws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7/Hk33w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7/Hk33w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EC4C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783849713;
	bh=5wk7kf9/zzkn6g6A6YqnkQFISjPZ2CmwDsX0qEv4ZCk=;
	h=To:Subject:From:Date:From;
	b=P7/Hk33wR5Hka0uZBO5+3rJYSVZ5hLI7H9m+0GmHmhDt46Votxka1gO+Ee6Iv/lV+
	 0VXbSTxGHbGHsfUIshDVeIV9gmJg23HHVDB0b5VrJE7LHQWRzvuesJgai6IK0bv6dR
	 +KrxeEIVtB3eiSUqfM6Vh9Z5x0CZBwCNv39UGpK8j+EQww5fJiN9OAiaEVawuYsVVt
	 xb4UnoI9H2JiN0arWDHR7astHOyj3eF8KrTwNX0Y5W5ueE88/2TeuimE/UGV77fY7G
	 nq8um6l3QxfoYpCVxFs5zu6w8zEIrpxZdSq/xKJ57Rb8OLBZuMV+psDLRAaQbwZeRO
	 5ua1JFzaffaAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0F0C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178384971368.3472.4312365366248326065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 433878747f482a13e9781ca06d5653f5246951e482086ac936b1b079b463ba99
Date: Sun, 12 Jul 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783849713
