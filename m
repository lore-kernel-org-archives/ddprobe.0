Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D83D3EBF07
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769943834; cv=none; b=bMlfUg9rw42x51EmotEuLhJjjt/4V6wZnxt5/tdJfBAATEsLKHzbYJYlulHR3m2zSxVndu3qujnNMuMPNvxW9l2b8F7S/EeExRdccitRdiVslrq1oYI8LqeCnb4nZXkDHvuD/Z2WP8N/d97L2OKhUDqEmyyvZcYzYC02moWg0v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769943834; c=relaxed/simple;
	bh=i5R2YQtZTt+Izs6zIIwPTdtdAiMkYhFSLDh+Aq0PWig=;
	h=To:Subject:From:Message-Id:Date; b=Up5gWEsHYOBbMGKoBJ/6FAaCFcEjCAA6Ryy5DLiCga21lz44fQ/GtdJTv5JuQHAQkyYMdmxr6/7UfG/3Hy4jnNFKOEnZImxuQ3kPKbwEUDtT98k1cPgd2L9vgsqsCeb19LVnH82uwBGiXVNM5kP8LEFmtVPYYuad1yDdUWShiWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyfLp8G0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyfLp8G0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F85C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769943833;
	bh=i5R2YQtZTt+Izs6zIIwPTdtdAiMkYhFSLDh+Aq0PWig=;
	h=To:Subject:From:Date:From;
	b=RyfLp8G0W1MrFdHRt/nf+wTqVRi5MoGQdCDPNtd6XmbdI8U/rf1BN+u2lYTam270R
	 HWRErXRvqRuAxGK8WwQd17jGVcl9hCB2xiPvzuHj092kYKPT9NVZUrhyz9qFXd0YXv
	 EGsGxGR4JPXzlIohSkbRrbJDNq5+THWlTZenmeFaoyHXoC5KvZC7vtxrzR/T2uyceP
	 sQd2179AF4uTEGVlWfYxzfob3xEsJNfv0lAFAzeJO6GNhD6rGEclIBLIM+1EWT6W+M
	 uY0mEExs3vekALsw/uW5V+Mt1zpVgm9UqJ5TMWyUeZuRY9dwe1i5SpWoEeD+f9ePy1
	 wFw7AI+n9/yHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC34E7C6FC
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176994383358.4020.6372967739404705307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f586c561de90987b1251faba967f4275c4a7205c6c3b0151c2ffdb64291a43
Date: Sun, 01 Feb 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769943833
