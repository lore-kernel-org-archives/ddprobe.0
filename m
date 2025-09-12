Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C493258ED9
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757696994; cv=none; b=DkGpXF6gCFinMR4vhVhLjjgqrBI4rK+fHoUYZCvqgvrfIq6MPlZY7UK1W/TZOC51ARK8k1/+v68vx12owcMUolF1sq6sC/0VTYjHGBOIOeABSNO/dXc5RiCZ0n7nJRuV9dC+0W4EkMvM9lfrwMHqGrvwoztE6Laj9NFXlGOMrSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757696994; c=relaxed/simple;
	bh=zxIF1KdcPo/g7QGnYTqej9N0xn6yv7DflAMuhV1/1PA=;
	h=To:Subject:From:Message-Id:Date; b=FSXCtpyxjQ6tkvN0np7vf7VhQZK9T2r3cM5thevM27ZHlLW78DmqBx7lbRXqVoith1NrGEIzKEhLRvqu+wu045Qxy1OUx89Tw20aa3p1VBSeh/d/PLy23+oSRKWr+/TFrmVjVnECFyTQg+meJhxHPdUX5A3aMA1Fr4/iEYnDWn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZ6/PUgR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZ6/PUgR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E071C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757696993;
	bh=zxIF1KdcPo/g7QGnYTqej9N0xn6yv7DflAMuhV1/1PA=;
	h=To:Subject:From:Date:From;
	b=sZ6/PUgRdpA9NljEIWCZHa5sRAGGmchmCeal/GQXyyLIytrbwbpPpkXBW4Unsasuz
	 gNVZ6MBzilM4kimNQ0faEjSWULqXPMghWcdJpDfQew7U+xkXOPsEuur4PhxaGCEg2c
	 SY5/2GNalReOSH5v1HTmjIypHkLWY1ne4/Gmo3bQuyvPvfbQDsb5CNsWm8fKQmplOk
	 lafHQVu7ZNg739yrVNm110mvIa6nSWedGjDqrqtPmpA3X+vB1jhcblSu2GjC7kHFJQ
	 fPcKcY1UHLdSUIIcLD8z3ha1bFM8t1xzgxW/AgfwNSywdwNyTFXy0Y3ZujNU1i3RC5
	 lP3POmOSEJ6Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F87CCAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175769699357.25648.1302603281339035408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 862eeb303fc2fc675f87271c81e7032043087b78c62e3891d3a799ad526b5ffc
Date: Fri, 12 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757696993
