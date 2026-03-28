Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D7B2DC764
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774673094; cv=none; b=QCsmKrogRZ0c7lAp/nXaQKSF11R0aIqXBKFKQi/Y57rzKJ2x7kFdcJuEgF/xX9/dtVp3Mquq3uSqgBpHVEsSTT71xwFg8gXXfiBbsesKaH83CgytXudytZoTva1lfJF1oO3szRtSuB4Ji5safd/nUEVc/lby+Hnjw86nJcRnOuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774673094; c=relaxed/simple;
	bh=/kHupdU0UjgXdK4YVdPYrxi+Uyph7kG+Hb5+LVYK9Rk=;
	h=To:Subject:From:Message-Id:Date; b=Q04bWkFjDtoSDEhjdjbwkl37LxH0F1pClRGNivHrSKpVdAmVkWFbSIFtj54MeFAReD+Gcm8Q6pdRJUnL+eQWmRnz8x6dkNdHG3GOCXocLLbuq56Py8972001RiNTYkvXXko+hNJmaNlLPkfc6OVzVUYmCaQSG5qKbTPwHxxxzh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDpLlkk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDpLlkk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFECC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774673093;
	bh=/kHupdU0UjgXdK4YVdPYrxi+Uyph7kG+Hb5+LVYK9Rk=;
	h=To:Subject:From:Date:From;
	b=uDpLlkk/INCTxQIP4TA+P7NWWY55u7g3EZPHCfR15HeT/cv/97zbIO4Kf4blv+Ca+
	 nAvRaWzLlYys2oVm2/3LNQrJhe/SFzdlaggpM75wZl2BHAfIuanrgyubVbfNUxDS0N
	 wibw/Mnb2ltnqmE29Nj8ehETco+ZSCN7F3LLXTkP+v2nIpKWxj1vBTvJeS4102XOVU
	 BBbkcEzTGCae5Cfadch+beElqkq+MDiNsfXysy9L3r/NnJR/KTpqfEnH8PrryeoK1r
	 DoTFFcgJAG4VoFFx9pVWfnAAn49bEQaIa6AUM5I1fXC3nmQEKJJr8W9hDPp0sQ9mSX
	 pWq71LZ+bhiAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9861D10F3DCA
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177467309360.21306.12882634720429914438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c93c143f23da082a11e6f4213fc868e057764e4ecc099f8d8434b3dcb46ab01c
Date: Sat, 28 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774673093
