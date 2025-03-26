Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259CC1EFFBC
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742998194; cv=none; b=SuRzI9f9ecrLO+RlJzHfdqQq2G3xlEA8ipNJ7sRYk5Uqy/KWC37XVIjVzatoYTciv7hUPBxHREKUdIvD9FzV82nlkcSkNgRn5BbXThMkWAVqz9l+flhOY3eOYlGtq3sSyfn1l4WKTWmKZF9bpcdshRSfbcV9+uXE+xixrOYF3Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742998194; c=relaxed/simple;
	bh=jj4FTUZ2apsoWXy7RK1qxLnik05+ZsI4/3juVOV72fE=;
	h=To:Subject:From:Message-Id:Date; b=ei3YmE+Zmjl5D2o1+q/byM/g7zDESorrST02ujPxASkEwnSOycSXjyVRKSwY2rEEk1tEI2H2g+EGf5f3MYI2SzmIJwh5k1SAqA4Y/ZaASFjSUVsSpn8+weik/VKIXa/jqPfyYmB1ui8+q/9nzqAuX3y/Sf5/91JAjDu6oOFVQMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvJmjlYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvJmjlYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D02C4CEE5
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742998193;
	bh=jj4FTUZ2apsoWXy7RK1qxLnik05+ZsI4/3juVOV72fE=;
	h=To:Subject:From:Date:From;
	b=TvJmjlYhVmMGV9cxyVCz9PQTivQh+OW09f7f72OLWgfM3Jc3HYaT/M9SBkn5fI26K
	 is6Y+JvLMTsr5yRitpnPZi+S2S1xwQneY0f91a/SB6fnPIEgR1WV+A8YoGpTSWV2uR
	 gmr/oBNQdMtaSqCA/DO68S1ohThS9asEg+OzKzcABN9sAf3mbX2NSldlybMQvz0LGs
	 6BB7XpyjX1oG0xkDo9sLpSCzB8gXJvMCHMjcFdc6Ke3eTA+biKNGXq8+i+7mjlYBRd
	 W3uuTljL8Jzpssf9lcKabtLgOED+EuLdBMLsjJeJEb3PuVhIDeWfNixGFKnJDbU8g9
	 Hu6Ftr0V8Ym/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B26C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174299819361.10951.2651492984022977028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c297fccb526b147ddd44bbe3655da4a057ae7eb1e77c9bbe0d47388a5915651f
Date: Wed, 26 Mar 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742998193
