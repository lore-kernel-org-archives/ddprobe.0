Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A94633D5
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 04:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716093143; cv=none; b=mW7qR3fNcgtM1Ue6y7mATS53/UMSXryfsJILuGVFgJMAd4SVp3hdCt5ZGXP/bUFnaD8HVTqijKUcjTyJ60TpCx2NaUFxDGPdMTE5T44JJl6pNpAMFI0gcTp7rhh8JDDRBDGNg+tU5h2VDZ1m9gS+hk34DXLOQp8GAxiiZDzv/Fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716093143; c=relaxed/simple;
	bh=Ojc7BSQSqnEAFiZH6hwUExBPimT0oXfVPwVTL5WyVJ8=;
	h=To:Subject:From:Message-Id:Date; b=uJF2ar8NDMsr5DH8Jc3YM7wrID9RZpNwncX2KcyLiXS87q+AMaglGbvnMXUk+/ikgb3ygpRuUO2bwls4qPRK1tPvtxTuUh/jqY0rZHWHBOakb6GkckRq43AWaOMUliwc7A/CfbI+vvCKVt2psJxXw7zkF0JAu5YRiKojcnLyY8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtWJpmtT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtWJpmtT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE20DC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 04:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716093142;
	bh=Ojc7BSQSqnEAFiZH6hwUExBPimT0oXfVPwVTL5WyVJ8=;
	h=To:Subject:From:Date:From;
	b=EtWJpmtTZzABBndUJICy6MCRd9n125kbEZ/v/5HZZGlnnwB8HNkjL5wVS2/UX39kp
	 xolIgEJr4qM0BgPpsOJElN7Y/OFOaD+zWuFagX1aCP3JXdrydsM6WAjmTKFu8+UV1Q
	 Nma7fUzZ5LuuVM3JzhIRjvyOguP/qzJzMf31qmfgSySM+i4tdHH1HEcxb54BxIiH1P
	 Iwysh1Ge+Pz+5GF4odZaiDPPlPoQEVam4untD3Ib66tljIRGKlmSWWLVlPHet38Pyf
	 +LjUD3xf1u5wRwqKQMHwYwVLI9N51+b5W+YMU7ScZG39PkMbzlkaAEInHC/CW18Fpc
	 jXdyVHBBcP8qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69A5C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 04:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171609314277.13615.7300322326957998395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd679b9790a7a821d560eb9a4b697ca270ba145ca080d0b2942d68378c90699f
Date: Sun, 19 May 2024 04:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716093142
