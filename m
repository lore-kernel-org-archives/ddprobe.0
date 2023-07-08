Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E2C15CA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 05:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E672DC433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 05:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688794028;
	bh=dwzQB6QVqQxIUWAmqR1vJb87Z5AdRnrfoNQ2vz+ZxuQ=;
	h=To:Subject:From:Date:From;
	b=WjbAfbTjOUdPBgPC49zdIWIb6TnSF0zzIu+wR+yufR1vNpW7OBy8jSNkYz16FGO8/
	 W8kaA+nrosVNuyn2+QarYebwYEUpZ3iLbxxW785z0crh9/WkFiPm+4WEOk0u4S3T40
	 r5FwYuMAU21D6CCHYtMxQJcr76lJjtoOWNIsdvlQjfbOSJ2V74MvNQ+iQxfRvGBGOC
	 b8eK7JemTydwQxMVntQWjlA0mHh5P4b1B3qQAtOQ4daULJ6XxB96ckUwv7RrA5Jwzm
	 QiXxkH8G3MgJxfp6WtiKEenSa4c1C5U1TDz6dbVLgulIgFNE3Ol001d0hBnIQSCoAg
	 BWRtN7rfO6jmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C04E0EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 05:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168879402876.13944.5046920035348222232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2aa4c9d4b89d8dd267a7dc0bb8d9d41574f7e38b5d3a05d546276ed2e658d8e
Date: Sat, 08 Jul 2023 05:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688794028
