Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7B1261573
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761729594; cv=none; b=aygJQqFdRxCJCslGuPA/p2I2ysq6r94fCcSohy/F/y8D1IF4lqJ/h5YIHvTjsu1E3JB0JUynFgRcwpzs5IuLTFCSt3UTVXqzQaQE5AlsXYtLhxhDycCkH5VSaVsBl4VLLIiWftN3HWvpFMVGK2paSdYy+fgGRSZ72CiXNKljjZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761729594; c=relaxed/simple;
	bh=+u6ks9MZZTws5QvdXMKXS31tfxNWA3yFpDZlENvnwpA=;
	h=To:Subject:From:Message-Id:Date; b=ApIVa7rZ5eNUXeEgjMQ5M21pQPuy2pHegGp2C2YBaeYkzZwM6lV+Uvx5DRB5zA03Xjk1d1xSloNupHNNyZV/HUj2oO0NdqFTcm6QJ1HfwOHrWYRW4t7jzF3oGW3D9jTh1mItEMXZ9CCHm2PIvj/gMRP7cU7HFAB9B0/xqFWzvBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuuF0iEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuuF0iEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6ECCC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761729593;
	bh=+u6ks9MZZTws5QvdXMKXS31tfxNWA3yFpDZlENvnwpA=;
	h=To:Subject:From:Date:From;
	b=QuuF0iEsMR4H7L7z2mCKN1m7DB/BGuLO0Lxyu2/DV9wPmSjH1DjrXV7DTD1VrqCU2
	 Ga/xwejv0myoxmNhP68PtoJJCPQRizOPix7y40pRNnJlMTjXNwYvuEXA6luoZJmq85
	 1sXESq6OhOdDeUxZ9AzKHJHKLWCByPf9GyI9cnNxraN1K4tnyR79jP9PKgxj/CUviB
	 iyySAuqtKX7K4uVYw+HU91PDp1w4B/ON2Mj/7Bc7imbu0ySvpKH0ijlsTfX+EJrm4i
	 vg3AemcsczSZ1+Sa0EP9752fKbvi53D2mdpiKsWjYJUbcsKQqqjUImeR6ABgXWz0yy
	 wlyshGF3fJqHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A515FCCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176172959364.27263.11403819807445347050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c24015deb4ac067f326080015199e66125b1315941ba3c2beaad3622652e167b
Date: Wed, 29 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761729593
