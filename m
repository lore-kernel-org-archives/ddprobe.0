Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DDBD1E508
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709494697; cv=none; b=uRfYeHTf6OvN0GqVc7GGPJvKVsKAnWVU/QMqor7yy9MLILjW13W4RzkFPLIj9vrIg5wImFFMtI5haeXclIvSbLQRpdrpftASEAatFm870q3pIU3s6pJuh57CHq0uwdXrFDXlgwzjUpyrhQ+dQ/E+TtWQBS4w1t4CA/lhtZ22NoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709494697; c=relaxed/simple;
	bh=dVSf4TQfTddzr9oq9jY+0XnbJC7zQE1rQrcBSyuiE4A=;
	h=To:Subject:From:Message-Id:Date; b=B2Q1be5psU3bDwqu3st2XnrJc9Uo2QSww10kfx8zGDzSuKQv43bLJODkdqlASRhu6mLnS9W/P0MCv9bG0sfgw/RGsgHmNwXlQbsyeZoAtNUZd2MRL457RAFhDtAlDId28munmVw1TVwqV9jmI/kX1Ko1vT6QQPJ7zoLEtnOkdiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLOdCLSA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLOdCLSA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77E17C433F1
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709494696;
	bh=dVSf4TQfTddzr9oq9jY+0XnbJC7zQE1rQrcBSyuiE4A=;
	h=To:Subject:From:Date:From;
	b=OLOdCLSA0+B/4aBhH0rqghOK6xHHkOyBgtul736Jx5UJR1nU5jd6cAvUT/a7tm+Xh
	 JQ6nEYoUIjhr+XmaJ58hc7ulZGV9rZpKVRj/XGgReN7Cx56W4MS5PkkU3Ap4MvyYYk
	 obIG+2DoMXLx9jxdAZowG7+Efn4TOjNcyfEg0GVlr5G4T0ENDyKiWTyqsuye19JnTn
	 SHKUHoLb5pN6mw37mTiNojLo5vpJYH6zSLRhAMy2+hAaOj1sOn4a/2H0vlcMZkTYoX
	 JQKzjTq7g5FsaAMADIvSUa9GPq1c0816e7MvGF6WolAfg+xBJ3RMbwdk7Zr6t/r8yD
	 t3IhwLCmt5Aww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B9A6C48BF6
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170949469636.24988.16234306471209809709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 764e2ffc4ee82e7e797dbe06b06fad58fae02a530e8e8565ae109f916e681f87
Date: Sun, 03 Mar 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709494696
