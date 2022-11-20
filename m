Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDEA4442A
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7975BC433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668988254;
	bh=NcoV3pVuYqHfKcbYjqthNEAETI5IlDg+7ucUKDhwOS0=;
	h=To:Subject:From:Date:From;
	b=Aw7Ij7SPgB59dRiuj2O6w+vf/fXT1OzI/f1nkuTDpjbn21CPQSsLTbtSUIB4ptXUL
	 p7AM1KJsFYbA4RVVBkw4IJIeDC9yBNv2iXEzp4fjSbpxylTI5GtBLqWISEGNcR1/JU
	 H9DjsWdZMJ2lRJUzrkAtqdc4waDOv/uyoVmQzMkbBHsDT6CaP580At6q/jryk1BUKc
	 DGPMu6wO8ylkqqXaBffzXAyZ3YXGnxbHoZfA4AwOq5loMsnJ/+g/smJ5/AhfzSl2tS
	 d0lcBDixjgCI9PododLSw9txEv4R2d1L1TmvOndrfNEcNkMrzN6oDOTWk4L8QJ7gZs
	 RK1wVPQfwqHdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F5B9C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166898825438.8638.15241751402465584135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e73517941735f2f0bd958bbe1cd8d1809060e251746a5223722c22e849504cca
Date: Sun, 20 Nov 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668988254
