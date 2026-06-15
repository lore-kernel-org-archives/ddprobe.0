Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D8B3FBEAC
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 16:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781541994; cv=none; b=p9MUhF26JAvr0AYTjj2/xLmoGfeTaiBD5ZbOiX6O1XpeKGBYKG4I9DGMBTkYVDi9yYVckjOvhKgcfL+3q1JXHKgvxbOrCV0k2qb5RAyeG9zDNjECxk7xJiD45t3OZg0HazUc2ASlaRLSvNVja6k13C8u3cHselGe1HgnRorWUvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781541994; c=relaxed/simple;
	bh=UjAkK/loD/xi69RNzj+5SX3G5dHZ9dLfI7VWxBE8EAA=;
	h=To:Subject:From:Message-Id:Date; b=lyoYCAjf0oOhuz1uf46HZp98IaPraeG61bOnkmLlLjbigFEHUlVmPN2P5ciki+qWQ3QmSlMvqdmJC+jw8WaFo+KlFvqhcwknKqT1xAtDPvpU598BTSH4c2Qxyje80u82MEshQLCCC6thZE7y57cXMXspuSwNpOZvc7SFcJEnf00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYXjhVOa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYXjhVOa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6BB8C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 16:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781541993;
	bh=UjAkK/loD/xi69RNzj+5SX3G5dHZ9dLfI7VWxBE8EAA=;
	h=To:Subject:From:Date:From;
	b=MYXjhVOaSmTrsZec0aWvPsA2OID38UBQlTZbfodJ9GvFecwsRo4uumZ452m32KovL
	 Q1JAkUxkTuWLB2ZVHpomiU5YEL1F/NmApy0A65eisGFYd15RLclj+D7yC/t8nICP/2
	 k0MsT+Jw1jl1BcEh3jzVR++Xa1Ohv1nRCp9885BdHmhEJTBJSX/ovn2KAwnTF4xWrO
	 IE0r5rw+aNFS4m/jqfMUhz5xTUdTXt+bT79bSVNMw/zlr1bP8I0PwMSPBByqP0vFfg
	 yI6oY9/BP7pEKYiWrEy5MnS44j1heCZY01ygNH0Z15wN6Fg9B8UmrF0rUaluO9s7E5
	 6NG2NJMw9PQZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC4DCD98DA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 16:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178154199369.4899.5826062049120267392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 225304b2703e5901100706414b736127931ce633fed060c7e1a5164093c6e3f3
Date: Mon, 15 Jun 2026 16:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781541993
