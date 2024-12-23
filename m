Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE2FF1AF0BA
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734979553; cv=none; b=qfAJI8x5U6qjxVtQ9pRmmb7aykmw5yQ+5n0ln3u+c3zgJtZyKCQpAIUQhLcViVqQKDA493bJDoPaIkVFekJcWEUgSlAyP6IUnevPlwhX2xGnaxYrTo6p30DXvMRc4qloI4jb5w3v/zMBC9qZwV4pnEiwduBKPm0sIYPl2CDuHCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734979553; c=relaxed/simple;
	bh=8yuONwz/xeJFTnF4R60pG5cnPOkrsIjOXkWd9TDKg60=;
	h=To:Subject:From:Message-Id:Date; b=jH+2dom8QGEyv7UB6i/KUbkn6RuMHC54629Cxola5BI21uiioPAEUJU9NnFH2t9JyttC4ZHaMgy7bkzOxNvWMptlZiB5G2MtngMkgv978VDdSnhqVRqWtH0UpN7jZ1GnNIKTIy4aOTMqk9R7XqwY9P2FMG7gs1ExHJBfFEFgMTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmEIjvbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmEIjvbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF39C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734979553;
	bh=8yuONwz/xeJFTnF4R60pG5cnPOkrsIjOXkWd9TDKg60=;
	h=To:Subject:From:Date:From;
	b=DmEIjvbMUkmXS6v7Qi0yCjIB1ZVNGEsK5FWnyD1q0sr6++W6BTRQk+Qm96uHpcDBe
	 ARjb0YyblVgJkcr3kMVzTNaY1wRG/pPx5bW0XyKbJSXfFCVrJ9BQGnPlWbEyZ70I00
	 kLx47niolqNE+WAqastZp/IYQhuihZ6Pu6psYbaV5Ms61xtIs5Kt9ls8KcqIKckoHm
	 Xqxp8tY1SbsjRBiO1IpRWTC8gZF3GzXNQYn7me9RDnS6Vs7FWc9KeSozEX9z99PM6f
	 lA5zqlI+hW5PbBxQvQv+Lrlnr+cJekTFNWCV7w3JmvV2AR6hJG63fE9wGKssvgrttg
	 tCooTnNy9JYNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97420E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173497955360.31846.678318686322633967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 972d791b57f11846fe6ea8bca7dac6c8274c51cbf9c95f0306dfaa5bdc2c34ad
Date: Mon, 23 Dec 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734979553
