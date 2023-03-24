Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DD117C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 02:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED7B2C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 02:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679623206;
	bh=dyT7uKeokHWtH85Sl+UegiQwTVJRdTDcIoVNHGonq+c=;
	h=To:Subject:From:Date:From;
	b=sk2JvcF3U9jfBMuHoGR9ZrsuPhhF2bwL535QyLzlG3QrzRfdezvLueicIv3+BHP71
	 +uq0doybP8I4CI+jfay1C3rhxeDnE43tzFvOCKYEHCl8+uPHArr1iRRhY7Jxjs8I00
	 /V9WkPOEeIACEoNtAMoloNpKUgJeQsW2Q9idDEPKP47W6Tgy9eISPPFhy7GLyhBnXi
	 cwWVD7XLdrGMWlkQ7gt8SB/naxp6IIcyO2qrp3gF0kpLunK6BoIw87Jmzr8RM/DZ2x
	 5f5VXh4Qq0cKxI8Ghvl/4CwLwTqvvOSrFDC0TKoVagG9mRlLJVs/snhdqdaapMvxJU
	 pU/IQ6/QDv54w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0427C6FD1C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 02:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167962320577.20870.11343798733874964712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a46c1fbe5694a94ea79b3a7b2b54c7759a75a956904e81863ffe5ab7c5576b53
Date: Fri, 24 Mar 2023 02:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679623205
