Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D734146B4
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DF20C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664299253;
	bh=EfSw8VOnWsuuRFl2BnZFs4jmUxDCYGtU60nM4P00860=;
	h=To:Subject:From:Date:From;
	b=iEq03kMgYQrZz6F/rhgBnG2IarfSLLcKyMQY1tX8ktnJ4TkdPol0E0xsgZl7dO1BX
	 cIUN/XctVCiu0LyT5Oedke4AOWn09SXwc3VE6zWUI13KuErPnc/o8BH+GCSU+yS224
	 cMPyxtxCpuZZ/ExT9OlqRNdUf3SZRk6FDRV/7L26XZvz/eBpWRvfSMlJysHy5ffBC3
	 250jfQdW2JbhNtxEvbeBfa8tszr1nacwg445nEPMOqqyelC1bCmD7xjf4Jo9wd27W3
	 /rtbzZBiUJJQ9K62erRC1bOClfHT0N38L0q0rBZg1szgRlnQb7l2TILpnCxwHwLoFW
	 NA4VRjZCZfRRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60903C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166429925338.1473.9368588078328075811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17488b4f7e45e86b9b4b9a876217524e852634c06cffdd87074f5fe0a2b10135
Date: Tue, 27 Sep 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664299253
