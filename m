Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC4A17C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 875C7C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672531287;
	bh=p8sc1DwfYP/b9Dl412+xpIZxy8CNn+6KghX5QArTmQM=;
	h=To:Subject:From:Date:From;
	b=JMwUuYpPJlwDJD8anChEWh2NIDU6FKueLleGYtvm+TYXq35NaPrexFdSPMvudCCx+
	 hiynw75xlubZxEvGO1XSKGdYbWL0HUsZyREmt8tZXeJj3P49R6Mdq2DFW2j3RIE4Cs
	 8Lo97OV4BDGL385a7sAuNdXaP3urZ9471EfEo8/t2SOMDI05lYpcgrwHlvw3IPnCXV
	 gRrDS1EUZZHuDGeIUOqBa1SgvRNzty54eGVdBvH9EI1XtZn3y4qX5yrTCzIIubQ4co
	 /5BhH89fWqS19Ti5DDPcbJcWsHpc7tqnBa8GtF7+MJNdebt4FXUIT7mZV3w5o9zZX9
	 XyDS55C+iT30A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 699FFC4708E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167253128742.9727.16735675140673077711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8ae41399b36c8be1fd67713bf54b118ee2ada7f5eb79a8bcaaa0cd13ea4b7d3
Date: Sun, 01 Jan 2023 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672531287
