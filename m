Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD29636
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 00:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE588C433EF
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 00:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685407925;
	bh=Ha1J1QPXsqO3zutiYAfW7q+YNzWsqZmH8WFJ2SGL0UE=;
	h=To:Subject:From:Date:From;
	b=UEDcCf3pd8+A74/8MHaRUI/1vvJGiTiKIYIs1ClX2eKp7BQ+DOtQCbTUAdRD2pZ4E
	 oyo4DybqNGINK5wOsCOBLFHJhGZgkxlTAZQ8OtYX3MzEM0qOZa0CvqeP6g3EITwNIb
	 wa7d8pPQlPWbwOz3TS8kB1fr1sfallhWxrs6FCn1qQEJyDEYduhHo/+tepXf/UavbS
	 LMhYL5CxXXoHeCegDeptmyRlwiPVOdTWD9UWmJgMR733oovPxV0L4DW65iztRI/UgN
	 Gt+PA+c+vVjiu/8ipnxZDNqPC07sschEXLiQuc5ZV6129EjUtNwMwxsAguyvpCwuno
	 6eoFUFN5WuLSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C34C7EE23
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 00:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168540792579.6132.7411772805212689301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b210bdb149f4a6019710141fc541def76bf2ee998c44238b55b7d468d00285a
Date: Tue, 30 May 2023 00:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685407925
