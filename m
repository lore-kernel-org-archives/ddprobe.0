Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C99E22579E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748882994; cv=none; b=cAmBY5EBfzLw8X8BiBvaRa4g6c130ZDIqDgOML6+Jas5IR6Iflue3MJqxCINC8J94hDNQxVt+A3/WQp+TjoLwzIgd0Z/HAYwChp1N9hZnsZqQZRD0e6Bw0pBjUgs3u7EV9CYnUiZzyKAdfZ1GDZZunDPf2z4gTNTJ/zU7n3PuQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748882994; c=relaxed/simple;
	bh=9ChdZsVnOaLz8k9VKowmFvRahjY7g90cb15Z1VJ/3yM=;
	h=To:Subject:From:Message-Id:Date; b=c2Kozr5ThUYrID7nHb/r2/xV3pU1V4ILWp4HJoFRdeyhLnTDM8cyi2xX8aRtRDMUttRcT08hZMm13aHkyojX8HCVg4Bm43DZvd3wvGXmpqzsX/io0s9J70fGsfE/7QgUEdAjQC9OjMsmllAF59O7c8ThWRuO9EuhHyae/mHO008=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t23GI7yZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t23GI7yZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECDFC4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748882993;
	bh=9ChdZsVnOaLz8k9VKowmFvRahjY7g90cb15Z1VJ/3yM=;
	h=To:Subject:From:Date:From;
	b=t23GI7yZRv7vnvXb5d7KQoiYkqUQU34oCFHXxdhruwxfLEsK2yDxbS7TeELv2uG7E
	 ciJmLuh3vYa03JcQYZdn2PfsQ4aADdLsMzFRIDBKXeFd0LBcTJ4raUsDMe3HFitkyu
	 LOP2AWDwbFDHiB9E+MyEHG18LvHixi0yscLRcs+8PIvcUF4HkiORwERUz1Zr2DCzMf
	 c/0x/7VcG0w5JaAb0Ny/7chuxhQnJEtkVHncnXygSLtSwZt0Mn+qOPwvLPqK6zPnLs
	 25icQ2retps8GlJwjYmvGqtBuWMOsYQ1yx8ub78fSvQtu2NldkPfl+OLErPgw2vH6x
	 oH+e7mvGaj/tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8A0C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174888299359.16336.1872522021610933762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d24d1a8d21de1d504316d4f87c24e217c162fd454fbf24d887eb4f693677dee8
Date: Mon, 02 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748882993
