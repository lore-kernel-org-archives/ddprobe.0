Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D36379C53
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 14:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783348114; cv=none; b=B7IGGEg9Yr1VJCqyiCgx0D5T/8MTXkmvolA2VqeSEKUCmyAdjmXRBl5qkQOLjYwILS+l12qFHhvp7gbR/mBmjJQy4zqJHu3OQngHGix2iyB4TGSzmmc1H800nAsBRYOViC0DzaLJ02DKYOJ1k74BXln07Tv9WFcXbw9FFNAP6+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783348114; c=relaxed/simple;
	bh=D8i4UDcKOelwgpiXU0lCa/CueIPUK9FsQNJs+iZrKrQ=;
	h=To:Subject:From:Message-Id:Date; b=YRJLy52+xiykAr0u+U1WDLI/O25x/khfNBgTIp9wVw5BjkJLZGKH/UN49Woh6zI+2w2kC1LsFbZotk3CB3jwqZMcq+cV/FGSUUdfd9Wg09JBd3XkuT+APkScwxonFbDmKiCIZV1cV4O/ZvyRRPvklLL8GGUHTUE/Lxuf+nZLkOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNYcF0jc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNYcF0jc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB7DC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783348113;
	bh=D8i4UDcKOelwgpiXU0lCa/CueIPUK9FsQNJs+iZrKrQ=;
	h=To:Subject:From:Date:From;
	b=VNYcF0jc+JxqxV4csU2hCalWYH8o+wIRLQh1POEOAQUN6faTc2aBNt5E9xvmWEri9
	 S7dVwCZ3KyUPJrEVHvBEOhsnpL8bWCtk1rRarSYYyoCgqmle9IHEGsKLKmQzumZp8v
	 yg1XLtmUL3FzpR1tWYaMnXE+jkAdUVwR9dOSg3k3saaBatTjcPhUsp4ZN+nmhrmvPb
	 k7UmOOI0xQfjU7Bja5S0inMHP/gfnq2zseuta5OsjIDDd0NnATE26zExJ1tUjhD1e1
	 WEhwp1IUlubD0S6G1JORxPKjqcSYs7AhjFh2ClnbAycjpfbgXFTHm7ZkJnfKOfpXeP
	 4C0TvaKbONWGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B8EC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178334811368.29702.8438674152254831266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11a00215e216ab04e3be968c4b60226e5151d2741be6786c8f9c94fed396b873
Date: Mon, 06 Jul 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783348113
