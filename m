Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D151C687
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2aiq6EI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87ACBC433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701546496;
	bh=hcMG9bNVtFbE/jCVD/t5qtl8BFM/ZpSEQSpTvm6umwk=;
	h=To:Subject:From:Date:From;
	b=R2aiq6EIjm7RaYmFqBGMrbWWN3yc0rNL0OLviW71Uyka1hQ9u7/ATsCtEmH0FEScl
	 HHQxXto1sRePPvAOo5GVf0kV8qNK1Ik33EG8WMwR5GsHhzbor3U3qbYKlV0BP1i/G+
	 x/ixwtTwT9PHizsf93WmeunN8SInruxROgg22HjDeVCd5NlO0VRsq2W5PU83vp0TMb
	 YDNQO5qWNs75k38FSFkaBPWaNmopnhTJ3grDxPVnfRwjqt1a24n6tWG8hTsSeHXRFD
	 QoizsCi9EvSG5f4wZQQTSVncXuYCYatxo+dAv0XB3oRlpu/+S7tbylh8RE4YZnhuSs
	 Mf2vzwICWhg/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E069C4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170154649641.4828.52553151723110415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d4a23cfa383b40d8b2452955b2e10bc41d8485a0c081456a8a60fc84f725cfb
Date: Sat, 02 Dec 2023 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701546496
