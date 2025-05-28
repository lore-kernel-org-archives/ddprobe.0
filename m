Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3308D1E412A
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748403594; cv=none; b=PnmY6gH3p0oSyCmGZCGg5lvZY230x6nRClLOnsQpVmkx/fushVv9OKYX74NZ20s1qtY9OkQM2hLnInIrAGfTdHgVJKPQz0A6UtZ+/XT8/NhzhkWcvBhQyuEFwta9aF7sbaA4BaxJCKGzmSwKC+39wabgErFUfB0Kw5gyKTXSvZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748403594; c=relaxed/simple;
	bh=Fe0/zkUz3K5cTB4JFEVbRB6S7VLd30EiKvevh6BU+cA=;
	h=To:Subject:From:Message-Id:Date; b=L7unPdl5O/nJ2jRYrF/Qw6gGu84YDUpb/Hg3otMq9H10iI2XKX9yFfHhe78NXdjvrqrOYMwDsXpIHRcD6u+OZ0TUSEM07k90j2bJFel1QTBwnJ0FPUOOq9D8OmQkSCKlWq83DYJghoxSjt3s6Gxc2Uk4+KlBcJ78/LkNW/0DrTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ah16uKq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ah16uKq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20A8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748403593;
	bh=Fe0/zkUz3K5cTB4JFEVbRB6S7VLd30EiKvevh6BU+cA=;
	h=To:Subject:From:Date:From;
	b=Ah16uKq9xWfKHWLtdrqYb6JSrSAVbRBdIPas1ArRqY2sVco1Mh5yRdTVRAAkusJkx
	 OVTyQqw4+Txd2yt8ard6t1kyvdrx+CAalzwnemqLpb4oPW+ipRqNgGB+qdrRjWj0vv
	 bb8weR+LV3ZKpaGWML7YJge/oWk7n3hiCF4seSf/hSB+xWrAOQxAVQdJxqL88JumOo
	 qmhw2icqAy5EDemLfM6Qv9/RbVYmVAt/fsi5O6gS96FXx2Yom7zW9ZM65FrND1iXt6
	 hUMBZ+6juv1WTlpOEV4mmQzA9TXLgAZUu07h11nn2KNi4658qjE7fscB7JUiDU3zsj
	 K9jgrGyRCxNpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6FBC5AE59
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174840359357.14363.1428492277108935812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2375906c433cca801ff934a9e5f186fa0df886409b046cd96a03a0221c24d146
Date: Wed, 28 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748403593
