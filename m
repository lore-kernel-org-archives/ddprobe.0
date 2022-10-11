Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D414D3C32
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 805A1C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665508253;
	bh=ZHk3ZF0G4txZGoJMKsfWgJU+4fZNjhVRYH1XkTf9zvw=;
	h=To:Subject:From:Date:From;
	b=q8NoHP9kCJ2+0G6AJxHaTpy2aPlm04ntFTMXHPgk/tZKm6aZhMukdhJKkVIxz4axN
	 +dv8jTNo6SwlkKMGw1hDKGTFLmzw1IehB8/ouhVd2neGC4CjwwgUREcEJ66RCsnUym
	 Jtho8aHI+NRodTrcQ5IqoyDvM4sBg56OmwcoawZfmh66T6GWSnQ0cRfm1xHfo5959R
	 iGjbL0ItYAuysQ/HJQidGLSF+Bn7oba0Rb5nTexqyMFbdShaB+0diZgO0eiEWHgjYK
	 iTHizepj82ACrZewj4GCopWypL6qgZOZKL3hjFJa38zqPMPdZNAsuFQ4brAMdDDZa/
	 s5L/qBVGRc0Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6505AC433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166550825339.31319.3866298503971344095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7160fa1794c50308f08e302221eb1bc161f795c22f179b0a9f8ea3f774d3377d
Date: Tue, 11 Oct 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665508253
