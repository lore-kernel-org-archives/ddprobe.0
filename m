Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0EEC3D6B
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81EF7C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665771053;
	bh=/L3pyHsb1iaA9Ros93XL7pLmpciEGBrn1XL0aMK+7+I=;
	h=To:Subject:From:Date:From;
	b=lVu1GNxrJJ2lt729LoQK3JLqqPzVO3qvHY30afPCDy8BaQoQ1Li3Vhl3pVTw5P6Kf
	 cF0WraDClHKMKsJS3B12UEvQgX4osvsw3cV1lbVIIj/u07yN65IpP8SQ2CIzD0Eaxn
	 2+1G4njbxIRCO/35frpxZznolhEBIhQjBhNU2tJVvmyjPAqPaS03eA3yIoylTHV+3a
	 fqnh6IkVRhCTbI69HTszkiyMDDs1+zwxpAgFRVbNIKE2Pnv4Ckgf9zbjprg7HRCvTi
	 UmSa0A+0BSUT6zY1KZ9FUYZqzDawx1aQFRYCckY1HPEz6jkzo36USzReUFEZ2W5VNd
	 UMhuQYDAqxhiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65B4AC433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166577105340.13200.10461186917152664273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1ba3d9ea87baa5b88a127768287fb137b0c4cec9e0286c8f8ebf3d040a7c03b
Date: Fri, 14 Oct 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665771053
