Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC058C11
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737966954; cv=none; b=a4J/mXIx7ylgBbSJyVQjYzKo9qdwTdeJ2PZY4wDgVm2Oqtu1k1ZGR846x4iVH1S7tkZFbPG+CIgksdbGxU02t3CjC88Se+D3Hxq0ZahU5v9hL304sdLSuw21hOlFQHca6ZJnyuuLxM9dZn3G7KuLzS/qsOdWmE2SoIUtuTiD0d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737966954; c=relaxed/simple;
	bh=wS37kmlpVoV7A0YxvvzD2EZ8tJMZu8T0j+fP7bdzmL0=;
	h=To:Subject:From:Message-Id:Date; b=dVf6gkXVj9VCbCzuxscn2Q+VXsooYwIEO/0rHb8gggrngyIgkx/5vIcBHmUwms2HhhhfoP8MaCDu0fwY0hr6gAdGuwL0GMEMynrwdX6uT1kkXXxwvC5ghZh22akdU6xgGSoTkmCtWtxB0eCYvz6Sg8ecBBWiFKD60offH2hR8Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ra0GQ5nV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ra0GQ5nV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3697C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737966953;
	bh=wS37kmlpVoV7A0YxvvzD2EZ8tJMZu8T0j+fP7bdzmL0=;
	h=To:Subject:From:Date:From;
	b=Ra0GQ5nVUepomWT8SzQ+qjuMBL+aOlxAOtVKo13eV7QwqxKcCDGCL3lWbV/aT+FDd
	 JFwz5wyRSPgB+ip18DYBAzAK9jkw/eJPgFCVgPrsl7GLVcxsaIFdhzPcq0VJjhP0LV
	 m7DkFlihBgKBPVMIcAuQ4D7s0jn6X9dwGydjfOc9plOdgEKrhXVl7FCQQd7IXLIIKL
	 Xt+9502Y8WCsmJVCNDrXKE1jgR/S1B7TnJr8ID5VBbQzrbaWUYPMCe6/TESoC8M5GC
	 bWUwcPtBSLG0PVnNOyS/lHSU3rpz1ozghB9+9lj36L/ok2JUDmtxv5dekWGshNOg/t
	 SSvg2ljmCEh1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9BFC0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173796695357.14052.14693653687251583789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2349977bb65ddef080ea4029f07be6c9463f57062f6137cb8db995f290d150fd
Date: Mon, 27 Jan 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737966953
