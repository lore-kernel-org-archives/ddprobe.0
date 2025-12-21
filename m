Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E62820459A
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766327034; cv=none; b=Mg1Ndwe03XXZ29CFi4xSAj0DmPZuKdFvcYMN6KPnozPAr7e0CveG37tVeLSH7pyHwsiGcvDYZCZt6knZ+FH0pfA6Xub6uk0LZdsbc3WOz/i0vLmkTgrRczB/Y5oyqiGPIgFD0FPZvbxldUnZgyb0mqxTv83BL3SEmKAZs1w83OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766327034; c=relaxed/simple;
	bh=Z0jFt09/GAT/4AbQCuFVuvXVmS1eXDwHFlURkZpCCn0=;
	h=To:Subject:From:Message-Id:Date; b=g1BwdAGWO2c2tCn+xP1achDKuNAVS7VZOWBxyM/FGRVuIaNe6kqtA9N35x6FgOjMc/zvecE60NWZu0SaUDe3ClhgNui5/Yes4+fd8r8tlwFKAcAq+nVicgGh+Hxfl3u4js59Cu+HUNzbgA05ZhgAmdAIcxW8WEA3jxzMcCnrRcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUUYlWkB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUUYlWkB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B0BC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766327033;
	bh=Z0jFt09/GAT/4AbQCuFVuvXVmS1eXDwHFlURkZpCCn0=;
	h=To:Subject:From:Date:From;
	b=DUUYlWkBbsR23YvPNkQnIIh9vzI0qTFSvbdApFuOZ8OYK8XUHEOLGVgwpSFKnCmdX
	 CHqFVf+/unJrlAtgwuWyoDmdiJxm8zN9bXwp0CE6XFJh+6GHs6oF57G/LAMQKI2C2Q
	 d7X5GswQpEJn4m+/0NRnOapol2cJv0iLP/CYH9heN8iZP5bSeDw3ewAWbDPPSXOw2J
	 5/egOqxq6P6FXv2+T0H5hsA1cYkhw+h8BZh3Jl2UsnnNtkQycbfugxjr7MJjytDmAb
	 0aI5FGEEdzgxHavOqRGYWtGMNNbM//1es3YafxkXaMMjBVJoELCUmpsfh+Ywko9XTc
	 F8fyPDj8LnyYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC80E67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176632703358.11036.397122346767645246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 737f0e826d06632514822a159f94136bd38ea91858cb81e31bb69a5d5a33073f
Date: Sun, 21 Dec 2025 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766327033
