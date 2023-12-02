Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168758BF6
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bzz0/PON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87BAFC433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701502096;
	bh=DJyOVOfvUsKFLZe/p2yz8JzP23ASjln4e0vZGXoqFOw=;
	h=To:Subject:From:Date:From;
	b=Bzz0/PON83SjKADlA7kW96BC8+27DVF0WRRUFqP+2qMLz6WdjiOtqSivMkf3kGOIp
	 NS28Abb0cx8ukanGj0gPEwnwuNAXClaXSwl34lleghZMPS13fuB9/nT0lp2V9vp/pP
	 ti6gG2JV1XGlUO72faFCRnXLGA5Sf3uTkcAt2nOfjxGbeVWBgK6G2+UVEsRs7p0+C/
	 dvzwEFxOxZNYqhWq377s3KXHSg2GDIeor5eIboq9iF2WvixUhzDld42gCnm9Mh+3dd
	 nh4FXzMi05Pc1hVixKvGA6xA1zkA9MmubDLqwtX7JuoDuGWPpeSOlVq+QZSXLLJ+Ez
	 Hpj1Nf1kYPoCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C189C4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170150209640.11283.6130222400204593869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d84d9dc048fb2197edc3d468c3f430c27911d2d74423049282ee2157b3b11dfa
Date: Sat, 02 Dec 2023 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701502096
