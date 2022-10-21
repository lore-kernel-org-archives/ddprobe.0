Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1F98182
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80E0CC433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666311653;
	bh=ZKClQsMuiDwFf/oEdMLdLxF355OBoyQe4sHMx51SE0Q=;
	h=To:Subject:From:Date:From;
	b=fCsLsZ6qESsUPDpUooGBcwTf0vnvXnb/sG08rlZ7w/bfpkgE2NZjA3kFZHsCHggeW
	 877b3AxpVDh9GjY4+UZTeBNhOgRqpGC1hSZdSvUznEBcancV54C2ANfxZyC17gS75y
	 tO4gGmoEdmSivlfXwPoi7WTPk//94gblve9ZcySG6bXoe0LBOqa7HOmrLL/Nw2AXfa
	 mYBB/qQH417zkXTDXbBGVugAhuOU8EM1ZfASb0ZIfE0Uv4gNS3Okv+g5V12Uph3DHJ
	 avwpZTsvqP2Bxkvva/8y4+Fif1vEoHfoDe9ji34wzenWrrd1Vft0FeIaeaIUMQ8z6W
	 PkuI9jF5cEX9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63148C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166631165338.22613.73023773942407786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe1a886d54f919a1eeeffec0e90dd99f89a5bd5183a8582b39d634d998b55d1d
Date: Fri, 21 Oct 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666311653
