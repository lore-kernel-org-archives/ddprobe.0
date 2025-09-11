Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3199D1DDA0E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757629794; cv=none; b=BpVSXObAFaSLzrg9LL9ezEz+aKgnjYSVBBljnq2SH0bdlp5QkKNaoflJqHwG9dPuYXd87MKrUctvUuv9/S+gRvz1tiL4Y8/lLI2RWraj2uQFKQawcFTzs4xB4Gyt9/Xvmn9iWgTyuBs66NyqP6i4gF0aBPCiR+wXEWgymaH6vPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757629794; c=relaxed/simple;
	bh=AHzlXwjg4n8c/qCYudQ3Nn2mlvoj6MIBDq2iCbtODyg=;
	h=To:Subject:From:Message-Id:Date; b=ZetyNy15upRoOU6/zNmg3ptO/RIzAMldBxAoPmdrLc2hdCK3AHltXrQiF8lRSU9XHXdmgtZ3NG4Z/wz7jhIniZ5qLWw/0i2+kqtggPSxBPnHgmt0o9h0SXxT1OMf5hJdWXlqY5qA4OTLC2lidu6jPweYUmOqx8vCHNsZR38uazo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5mTBLAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5mTBLAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB24C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757629793;
	bh=AHzlXwjg4n8c/qCYudQ3Nn2mlvoj6MIBDq2iCbtODyg=;
	h=To:Subject:From:Date:From;
	b=B5mTBLAasC1/H4wvo5bL4/SEvQAwRKZ35UWM7ZqZXpGoXIHWByMLQmgd7kOc1+mqU
	 VZd++lHKSqkMtT65hpGccQhp71TyJ4p3ET/1ahxJQJSPfFRJi8YsMLtY6SGCdDrOov
	 NrDs6SlL5TTy0V/kKXST853Kbrhe2Ij6+YlnCyr49D7dnCdL7et8ycsOa0zpF5p/O+
	 RQIn0r+iW/nvq1NV43GrojGVaE17HR6Ztp0QWvEj7w2h6ZweOa6vPHWP+2Pn09n6Zx
	 StgMaUdtQ+u5F9blN2u+Irfrc5Gs+SXaGRTlrd8hga/HP8kr9QDG8cqroM8WCX5cFm
	 5sIyj4K9/6KCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96336CAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175762979358.24500.12664324471391718651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 086521c3ecddda3ef371367936477f23b7cc1ad2eab03a4bd6dbbb03be732f28
Date: Thu, 11 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757629793
