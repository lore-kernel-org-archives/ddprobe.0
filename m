Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368ACEEBA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748206194; cv=none; b=GY9iv4yI0Mhqmis9E6T91riNrMomEKurW2CfaJ0QqcEfVMDY7XDeYSLuiRSPGrWezrDYoPfY7dNINJJu8iMQyfa0jJnQT5K9pBqY6LQzcP/rPEPM0AyxJhdtmXKI4cCfZYYZkkAIxlUGP+YZOei+ffwMGuxnieBSAWuhCcD8iMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748206194; c=relaxed/simple;
	bh=mkrOwIbPaNRaQBrE2tv81LWuJZZ/MJCklZgXiF9u6SA=;
	h=To:Subject:From:Message-Id:Date; b=UaXkqY4X7A4AFtIwcupCS/pN855SNFMwf1gb7D8OTGiYgUu5t/QWUN7xeD4Xbel5mTvpf0jEM3XrlgSDONYwu08j5CoMaHdKOA6tQ4fYpj/VaomkO8TMJQITRrDqVYPwQ5QHu6E6AMjFEqJx09kVN/Aqr4QQAITiKs6oCy0k9Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKU9l+2K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKU9l+2K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16E0C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748206193;
	bh=mkrOwIbPaNRaQBrE2tv81LWuJZZ/MJCklZgXiF9u6SA=;
	h=To:Subject:From:Date:From;
	b=mKU9l+2Kfd0UhWFloTztmauvhcZjlmY+LWGsc0gHTSZG0EH0liClVMDmwmzn++H9C
	 63aKYSyDcJOiUrP+AAlAZyBjIlC5CipBXh/XkWkrFwCIFceZWzwygy6ehE5vqi8X7V
	 w51ylwAK4XIfrOzUKg7QNtt3NRDvThfOIrlyo1ztGgM3QQIwl18qegXKwylUPhMjJr
	 fzgb59gQZ6QgcV0Qu5t1pkqI+L7w1uMeI5hPwcIxPtRBYoEdHtGPylzbvGyNy3PKH1
	 STQ/oJgX0+kXZeGD9waeAoWCtFa/OhW5hHn1yuv/b96lw15NG47k/J5trWA2RmMZ2G
	 IovAAi8wk+NZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7CAC54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174820619357.5496.3395562783987365261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1841af33a70cd719ddd059c47c5573e9b99e654491b628299dfb364bec67da7
Date: Sun, 25 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748206193
