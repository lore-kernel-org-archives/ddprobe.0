Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E73B67E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A5A7C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671536487;
	bh=KlAQ1KBZ3JmFdlV+RDoU+Msjpo3+zWfZZ5Of/pwHtLw=;
	h=To:Subject:From:Date:From;
	b=hdLKqKNQdVS65Mrqm+2nfERGr9sTa0ywRaioMb8Q0dhxs/8ECSwcc6hpoag9qgdns
	 c9J4RQpN0cBooSJ6yQEMr0gWU1g2RMFLhRzJoIGTs3QR0N0b9AjAt3KIYJUsLmotpm
	 YdTPiZPT8EHHNjOspapsRx3LGDTlVduMiDcmyagJiXp2yjPJrCdX/PsR0ycFH0cOwk
	 MVy0YVMmd6SEz2z54wD7FjbEJZFZ6YcFgP/zjDCxXgX/pToFXDRTcSnoDfbay9GJjG
	 Aq9L/vVH1RphSsHQvZ7pWt9EmWYyp27PNQdR+S0dgkAJYKkiXZse/ktur6CN0oowLt
	 4dFxyFHCTUVrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E2DDC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167153648751.25630.2540254990125186890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253b14b853e62f0548534161f9a39e8e465740dfaf08482d0093c15247d38f2c
Date: Tue, 20 Dec 2022 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671536487
