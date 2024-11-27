Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3D214F90
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732740354; cv=none; b=Wm/yGOrkNDQ3s+ergk4RarWYoHpIoISJ0SpJlA/rFMRSK5zVz5K/KBKKMeXyX6ejJz8N6o4mmiYJrXw2F01WX/z9qXKn83H4ukY4ap/8kwUGs2BTgVGqMTxNOA443xAosGHPh95ckMDWK6Lz3Nq7AFw7J1c9uD239XB4Qeakfi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732740354; c=relaxed/simple;
	bh=QwZXf3mF0vTsmnISpI2Yn1CDVXHM2zzCsRIbysy/iaU=;
	h=To:Subject:From:Message-Id:Date; b=ax0layS6k/VOqmIqeoSWXy+LmoE5lP1BRReW+3rmCluokdU9VQEt6P+ezOJTaGRIMxbB5nLkbBt/kTg8HT+042mE4ZBW/OzJ0V/gMQU9KWm1xTcfV0lyLldn/Pu/w06T1HcDMaBBIluBMHjavFx9ayW2w/LJwad0jvDTz6/VR/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Je4LjY4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Je4LjY4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9919C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732740353;
	bh=QwZXf3mF0vTsmnISpI2Yn1CDVXHM2zzCsRIbysy/iaU=;
	h=To:Subject:From:Date:From;
	b=Je4LjY4WNMZaIrAiiIJ+YTF6Xw6ORUsRdHi2N+xVwONfzm130NPwSEPAextPgqLqh
	 hVulLAezKLLnDoI13Fl3n7VdCqm4oo9bdzwXMzLAsNGDvyTBRVFlIXYloKqDcjftnX
	 IIqVA4KxfLfG/w3gI5zeUxVcoDYNSGLZAIsJ29+SOqSXiwrp1MHgJm/Ga/GaWbZK/H
	 J6AS9YNyliLcTgRrOa9LA2QW1+jEku8ydLyVdbwgouQNerLdK3ZPnNYSBBxwm+K2SI
	 kDonCSfIhJNzJ+aM/3pfe3HfjyLDPZQzTOodL/klgVNcJibvP9Jx3c2zL8VxnS/d/X
	 ngX8e0Eyhip1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1864D6D239
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173274035364.5357.6187553541710666286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d512a44d93463b94a2c26869883d8933a5e142adab28ab5df1f17cec50b55a97
Date: Wed, 27 Nov 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732740353
