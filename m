Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07EF6FA3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86A7DC433F1
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673887287;
	bh=xDk9Q6Ox0Rk0OMb8sdR4S9QGb9uqYImFGqZiHczImIk=;
	h=To:Subject:From:Date:From;
	b=p4Fe2qbr0p7JubdbIcpETA/zoeTkr4gnaqdWSo7a1PLYQqCfnkR2AvGlLtV+T6YwT
	 0wKD0QE01iRnLHoyrTqKOnVadybF20cO4cmzXbj2Uh70Fg6gYCreUHg6AadNNDA+FU
	 48Ha+AJ49zAUiPdY9refthVjG4xokEYw6Br/DR8YzoKBVrQ3S1Bako9y5Wl9rUnFq5
	 2q+wNMGV4Tv4jGVr8wvZF8p/87D1Gf/itDOIXxmygfzgIG7OOfIHqi85q7zyCXfjB/
	 gDJg68aE/dD37VD6Cu74nkq5hp0UPraug1DmTK35uW8EDYhda9oso8CDESMThDGIH8
	 AsgTRjQHbnE0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E4CC46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167388728741.27404.18413155119721961018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5632448ff069cfe15bc244374e93311dbbcb3c54f686ec767bcfa92ce6ace4b7
Date: Mon, 16 Jan 2023 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673887287
