Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D14A12E92DA
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762707593; cv=none; b=R/wQNZHszCQBNuc4dyp5CyM+KG7xHzRhU2+js6GqZRct45tbuIkt+UD9Xve79IoMOL+BaWrcDKaAjyUqxxn3vM4Nu2/6bIeQ5dVkXbKtDmIVfswTqoiUdcY8PFcMxoJOIvPQsvMiiGapRMKPMKVapXoA/Uj2pDMEZv8lu8ANeKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762707593; c=relaxed/simple;
	bh=Ks0hky23gUTdWXvCmO9W8otXG4pbH3IwLbI2abfse5g=;
	h=To:Subject:From:Message-Id:Date; b=KaWKlU8U2ivtn3Reuzk//cDGSN+LV7BjqJGviEn1CAG3181xLASIC+C6a+0FhYpIJmLHIBHzOCUHbW5mfBJAowz715xnsxNEYpR0DZPmwe/AZn5Yas9X+3TAEv9xsFeOhy4kvVcTJHIVxIycTZtOUVXLY+wuz5MuRFkDVksSGCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQHODbGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQHODbGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB63C19423
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762707593;
	bh=Ks0hky23gUTdWXvCmO9W8otXG4pbH3IwLbI2abfse5g=;
	h=To:Subject:From:Date:From;
	b=RQHODbGFmLSzyO5kvfp9th66z/lL7oKBW5kaKcD8bkgEIjRi0Px2r+XfmiBDbV3IC
	 im/PkcGv+FnYDQztByuOpg5uCo+0OLCWMyDvnTyllZLv6lP6d6dgPNL3BGATmQFvf6
	 ndE0cAM6LY1WbiI2p72sAOPunRgI/6nToq+D0npcvDjI5BEn17MHxL6P6hnwXeAR3+
	 QEW4Ekl9q/GKYJ2/XD6X8GUTCACxwyLicy+Xk6Zrz2T2PIKpUJgqfUpwd+3s8nv/jT
	 N26jDVC+3N0gd9XXBcfQPNzavrTHfbeB0Wz3kyNX9GZbOmgnXUHbLiUBxBa3k7J7j/
	 z7qW9dV6E7xsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B44CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176270759357.6421.4492137244422195021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d7c96927dad615aed579a71daecdee4454bb2513f878ce7df40961645316a43
Date: Sun, 09 Nov 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762707593
