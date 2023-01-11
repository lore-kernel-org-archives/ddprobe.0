Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DADC53209
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FC6CC433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673457087;
	bh=IGMs/edOak/NeYHNSNdfnrJI65rHTqUvKMi2c55z4Ug=;
	h=To:Subject:From:Date:From;
	b=rGRxiB+mm7BjwUBVyEMZ2OHOEB7/UTMk5Pw8VqBRjefJra9FFWO+duk4Use9bhTcW
	 czfk2EcpaoH+fT6shrMlWfkcPxezfmy7sMa5D8hXxq5Lrcl2AG8gysrHrfgCq0F3ee
	 23T+Q2VUZ2VKtL7Ym9/nmAUPpnNtvycEpopMWPgRs8ItL8jHOIZWMZ7at0VpE0JGHa
	 NMr0u1lPXelkv6nRzmsvGeXDo8T7C/gy7Bfg22XWreV5A/q+ubpJ7Ajw/pTRW/Jlat
	 DseE8juLZbbIkSgIazZxqVpQdG1DXPlaBPXgvPR8OV4h9UK1pxab9pgASlqG1RLvV7
	 912K7q5zTKCJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73550C5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167345708745.23078.17686259925754649691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f47cf37b934e74da0bb442f2eb4cbd44aed2c5bfe4d026ec443ce5b2028da48
Date: Wed, 11 Jan 2023 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673457087
