Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241AD3C38
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 18:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75A8C4339C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 18:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674238325;
	bh=lO/Wyarh17PqHLV//JuaxhVvIeWkCvYYIbUJbJt0u0E=;
	h=To:Subject:From:Date:From;
	b=HEa0JgTVhstvgLYNZ0Ze4FHyWk3RiXVAfji+JuCNi1NYlP4JExJTyuEfg3mJpUuuT
	 ZjVv2Az9IPpQFLvrbwsExijJzwnuno53JM1pMW7Ah/bCNWiGBQlLzzPy9Pc7iqLSf2
	 j5DEBxmv1x18UqVQt1hozeczOEHj8Js/+bsrvmMtNjPa+zWxtVj0bHVqzIk4dh+Tb3
	 NxHbMeteGMDCUi80epdsnN/o9UBCfYJ5DGO3NS+bzvoNwujYHV7Tzn5v5yuQXM4FHy
	 T/V51Z2VnSy5W+23zu040xqovyQJ5m9582+qD3LmZUHz0kGvkpfOv1ia4ZopHlCHqn
	 iAGa9v2TnM/Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B37C05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 18:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167423832574.22320.6174514132207713163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b51c5f55e57ec1d43f228a49297ce511a3c8bfe781400078a8e77828235b2f
Date: Fri, 20 Jan 2023 18:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674238325
