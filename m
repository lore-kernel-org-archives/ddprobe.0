Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4189512E5B
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723353354; cv=none; b=RXFkxhgAGQ4FA75AmaM9Ja7glGpGI/CwEl3blxxpxoQv2iF93mjTh4fEgCFCdvTAvGMOhbSxBOHwPl+Fj5b8p8tQ6+T7PULRThsThtuspf5URNTjWdDsmRLCKODKMvcPfw4ydkG8qtJW3ut0pok1GPpfiqShMn+2ucIQtjOVNMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723353354; c=relaxed/simple;
	bh=EdOS8A/6sKQotG4zjgcqddDL1yQYf1Se+IB9RFPJaD0=;
	h=To:Subject:From:Message-Id:Date; b=CSY5vmlr9SLVGlfMm+DYDdm73cW+Moz9mjre8i4PhkBpgwzP/hDYs3QpLVS1cHmf/Bh0zH6EB7SGixfjR/2RK7McekiK7UVwBghhODIpi846q/21rYzWSXKnCq2gT8DhRBOfw/ZLVIjIxx5yuns+1PoehpUVsDvTLUJgEtYXhEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3lBOCEU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3lBOCEU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB256C4AF09
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723353353;
	bh=EdOS8A/6sKQotG4zjgcqddDL1yQYf1Se+IB9RFPJaD0=;
	h=To:Subject:From:Date:From;
	b=t3lBOCEUCpR/40bdkd5ozbhOO4xHSqiZOMORNthfjUliRVf4A1YjqtmL6m8/6s/Xd
	 hnG16aBu9aM3opnabIXH60LmIG9bF5Nfq5h2BbpXTlwFSRMj7uezDyiernFjLXsnRT
	 oHHI3lwmcromDvN/VXUPMAw3SabQqE+9azsSKSQcXao97do5mdiiFVRiA1TLuSXeDN
	 neZhZPq0xwuL0AsfFxiTen92RUO3JhqlkUH5/9FQY2n8Pc2iTDaGUVNraKV7KVwhXf
	 /7ve+owrOVLWhqSSzxhWt4cbaOPY0z8qDiXJI8xkEix8KJjOE8agEko4bSaBfBTZyn
	 /WiUnAI8Kt+rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2561C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172335335365.18364.13574548618159287676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9896f2e3736b66a0f67f77e8fec4958a6571c7c8c06c7c5c4fdb38bd043f7aac
Date: Sun, 11 Aug 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723353353
