Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254E91D61A3
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745366394; cv=none; b=jUB2w8SVrCa17HdjK9Ojw4OUwJxt/8ZZN/T6hOIieok3U8eCwU4DX/WmeceRbo6SNGNScypaJRM1/Yw0s4dBel/xH1wkXLdQsbBwbJqSIfXBwGp9EbHiMDZRhH6bFxaH5en+mM+0wFrYYPDpL//9UsJgcYDnFmrahtpnBmCU/sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745366394; c=relaxed/simple;
	bh=CkKeGZ7iv1BnIPFFL5C09uqfJV9EM/0S/+2gftRNBgc=;
	h=To:Subject:From:Message-Id:Date; b=U3nTXzlwDBpwYaWxJtqvSdxEc8mx0goSVuQ7971BgE94aHYTnBtPZHADEFtsVDoIjYQ0SMng/wAfVANHlApYn/L54jNldgJhspwPr3GGVrVpJ0G0nGzg+HW5iPkrApSh56NESD6BOCGulncriiOOaEW2lfUNCObWuiY7sRneR1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bF6zHaQD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bF6zHaQD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BEF4C4CEEC
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745366393;
	bh=CkKeGZ7iv1BnIPFFL5C09uqfJV9EM/0S/+2gftRNBgc=;
	h=To:Subject:From:Date:From;
	b=bF6zHaQD8fMExVWeWbdZy+q2zU2xtXiq/ZTejj9J6e026KeKBMhb9gil7mPB4i+Ys
	 KNYaNVCm38AO9+YJLAWt63TMcamktZzs1amqyTh2i/gqNz0cHJk4Nx95Jq7qEGCMWV
	 +UAyK1mieZyFIUGxrFRX8/EcE+XTcoWozMrYfhRJgSJpD36Rr50VxQGXI7APiN94uT
	 TWtJ1+/ITksx2qhcQsBGSSeQb3RjasdQ/4h7F9XxcM6mhKHMzRftt8RLVf4xu4HqWU
	 IMIJIPu+v4qt2NzcwGMeiabaqzztcz78WwJNXM/cjk6XjysLeMJpc1g+SQYMdvjWJR
	 z8EOj9Tq7kNJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E484C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174536639357.29235.8658577151838845529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3188d3d140a2eca04e2e2b4c3882cb2c503dcc94b915772a2553ffe3afd9144b
Date: Tue, 22 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745366393
