Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D96E27C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 21:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80482C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 21:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670274654;
	bh=dNVYojd7dxF/PiPshjjZ3kGTH3v6LANMDrTvmVjwtaI=;
	h=To:Subject:From:Date:From;
	b=Q28BF6i5kEIEDC7d3lf+XCSwV002slbXSe2rAthFtz75hCeL8qFia/RnwWk/MWjue
	 42W/D4XmGHrjXkCsoWd1Az1y5Gvc0tIIgyJtIKh4XWNKz4io/jMt917aJ9OqL40wyQ
	 2Sp99kX/uMHZNYz8NKSrJItqsYUfd6Cy0it4tl7X7glCA0R24oPy0ouDDH8LTlRfH0
	 FNgqbCh1IZouHLUVsLpITB8aVvLR0PCQin/e35AL+C9XlCg8tST3xcma4H9KnaZuoC
	 hmWB1sjtJI0lC/L/kKgeeLfMy5ylTl/QTO964hXQjlaBkR9iURZA0GL7dTRQ9pojeQ
	 hmRykYHmLk9tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 638F7C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 21:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167027465439.4526.5504626242470461980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a6b5090ff9d2cbcab6362f0017c9f7a763e26c2740e2b487bc7a712faefe510
Date: Mon, 05 Dec 2022 21:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670274654
