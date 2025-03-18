Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44376210F49
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742315994; cv=none; b=IeziTMIh4Am0s+QFUPMfcsW/vYfj0/l30sUjWuNaOJEYU7LN8UDqENIVALSekTpBrBIE1iJzZjc7J9hCHZKsNa30cluYGXLSvWjQAYhNXjsvbTWUIxiqtoHAsTAaReCV/i/10h7ApIcpqOzyZ5fQP8DAgwg4/jfmfw7UFH8oumw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742315994; c=relaxed/simple;
	bh=0cgJN9L3EUAbYqu4lh8kIQx9X7YiLV0j5mVCLn+6OMs=;
	h=To:Subject:From:Message-Id:Date; b=iAgXW2agjqsVjSgTU8KuA+wLXeW6iGR4zePZ3KSSVOElX78e2+vhY6A57hkzsFl7HXi/YgAXKoSv1izuv5holzQcRILcTMXNljaCi+tPktUa12BYuXYAxtx0yA2GIB/BUjZ03uDTJBQou8g1gdFtMwYOmJYfV56ps/5I1mIdAsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QpFxMZUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QpFxMZUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC23C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742315993;
	bh=0cgJN9L3EUAbYqu4lh8kIQx9X7YiLV0j5mVCLn+6OMs=;
	h=To:Subject:From:Date:From;
	b=QpFxMZUgMq8UCarBkcs2OJM4SH3ftvqB0ANww4u9g/EIWjVzY6R1XnIdPaMerBAyy
	 Dt/gj6HhAp+8cqTd4CculujQzUhEScv5FG9S4Onh946jaS2JJEBNMqoP0heRSEb9KW
	 T3Tca8SqThiUO3GwheZ4+rezilQ7NUw2+ak3M9IZFXO5NZCd8rZS2OdNmtHp/DsgUA
	 8IQ4p2UVHP0tvUUqk5iFFa3fXc0EJ68rJOy6FNaLBWrMFbZpZ+7//6JhyWpxdubZRW
	 Qr7G6vM93LUMQv78bZxCIXQ++GJntY4Ayy39BnvoUGY5rBw2Fvn1d7MuuI023ZGEwU
	 9wlV/gwZ+qcOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB40EC282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174231599368.6360.12135558372393234633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e5cd8d27072aad7e42120cf14ae31ac9a0a8eec19244f0afb711472bc6011fe
Date: Tue, 18 Mar 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742315993
