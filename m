Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D9FB6AA2
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 15:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54A8C433CA
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 15:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694186648;
	bh=0ahgMMKxK9Z1RVB4N6FUmec65HDg8Uh7uZgueeUNrco=;
	h=To:Subject:From:Date:From;
	b=fizmSXglE85iCutcExBG06xxAFwGUExQtPXJ+9mveAc3qQ6xOUEEAlsUuFLaeiCjX
	 /LwoOM+mi1+8ZYQYGTwfSjlOCn4CtvOsU4mzjdSsmfv7VpAZZRuE78Nx1r42YNd9Wt
	 2OVuSiDheKruDEWv3GVgtjUyCzmIjP4pXYe+JXmDW6JNfwklaOJIUUqYA5t4Z+RjN7
	 HQO8+g1G9+q1H3UR1ycTKQ5kzxICUla57SsLg9I5jqN9KY4FzxBwfC1eXiodbCBGWN
	 Ub3ABTKArlNqght9jVLWnPHSkPznHK/A8OJG3ETfRXEo+URxsBVpITLPiYENRfpCbs
	 xDliqPiz1pquQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FFDEE8016
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 15:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169418664873.14416.6710986504664402364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea09af1bb12c7cedf50b8e260be9a436c83a190abb4ec73e5625e56f8dc1e28f
Date: Fri, 08 Sep 2023 15:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694186648
