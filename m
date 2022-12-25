Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F38F0361
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8842EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671972087;
	bh=c2jfac8Y6KWMMfbEc6LsVRrvC4V5o7w1w+1JkkyYEdk=;
	h=To:Subject:From:Date:From;
	b=SWPRLktNlbwLlQZkHdQmLyK3kGiY4PaQSUTh+yMsIkkMqWXTPYIbhQZNc01daQeh8
	 +/O57HPRdt9xRl+uTxID8OL1HkZyesNRfth/ENRR9mwuyRTQ5WBAwPDlazP2c9swmk
	 w9V0LRmy7GMZQez8CML6T87yewUzHY2JsFCf8HnNgmsH2ZYNuibhl8V1LfQXi9ZJb/
	 1o8DJOuCVC+e4JZpVBwIKeUw+sZsYA/Eevv5r+TyqvCj+j+CWW4pdRO/ZWmobS4bri
	 oCidFvOZWF0TEqnGrg/Taqnv3FsuFn58HKfLijM7irOmMP5Rtfq5qWiMvxmddCqvpt
	 fX9occCL5r6SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AFBDC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167197208742.20120.18217416934682668004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bd8d35595881d2e2a0bf9f2477d3d1c9361433ad60fe9741eb47392e80a5610
Date: Sun, 25 Dec 2022 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671972087
