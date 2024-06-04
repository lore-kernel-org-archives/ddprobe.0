Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4432A149C42
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 19:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717530983; cv=none; b=JvwpV9NWF77mr6wgqKha6fu/wwGs1IRERbqSh/4ivSezNlH1aRqZJ1nKgYYr3xrK6wdFLaLaPyup18Z8ESPdXXRl27QhYjCBfQBgD95OPZMOJp4zZ4QjykxuobTYzlh/RuXd1QFlHi5E95JgWhPrwZVd2DqnLHlHhOkUF8dMT9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717530983; c=relaxed/simple;
	bh=TciPAe6CucmXHrOLj+e+NQGzMiXYxqM6yD9rF7mMBng=;
	h=To:Subject:From:Message-Id:Date; b=NTKugukRR0g+Wcq3x9wiBjbSnPSJTuxIsiWr2bRbPryp/DZDNt2KZ8iz+NsqHA2MDcmGG1mMuru7mxpd1svbxF9Y0Xw5ETZa2oQdKTjhB5H/DNqhQKWYcWwAE8j5WW2bzkw/+DfQJJ6y8tdAVpRURzmHIbBCQJC5aqAvSZokPVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/PWXi0A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/PWXi0A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4E4C4AF07
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 19:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717530982;
	bh=TciPAe6CucmXHrOLj+e+NQGzMiXYxqM6yD9rF7mMBng=;
	h=To:Subject:From:Date:From;
	b=A/PWXi0ANh9TgCf0Jw60WIhZtwrQuS8cYAchAAClGkjEh8xs9rVfwtJRJuDzaTkO2
	 niOwlpdRa7Fm7rlCPJRUfyfMyeTpPrxbLCHnzn1ERI1zGkHXN09nvk84j9SjPwTQod
	 YEO2nM00XHYdHDbzSf4cWFiKDocFxNMONX0PpHIJscFYMzfxOmO46kCyUdzn4dRnHG
	 XnWGK+DMgdKMmFMJ0KRz5Qsvnoxr/Sf64G/KzQF4f/HjsICYB/FXHNeMAnXI0KHErM
	 aIgmWqJ6zAe4nUnuSineOUnLcGPqUzLOSw/0HyZ03lTBAskei2a0cBcu4dWTxF/8HD
	 hDHvAiCtBY1ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6B4C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 19:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171753098276.1655.4879422675575179819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a75ca44af3a927591ca571f8226c6f87b1076a622e21916a6ad53b4f4edb5c6e
Date: Tue, 04 Jun 2024 19:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717530982
