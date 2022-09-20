Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB3A37C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 725A4C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663636253;
	bh=f2mr6VafQeHABtEux+DV5GL//CU4yGqfUyadGOwYfqo=;
	h=To:Subject:From:Date:From;
	b=iB/fKHpfpHx/52o8DG3rDg3EO/lytCRYAQlWJZI7v18m2/CiMfCSjkPS52Pr+yRhQ
	 YvHw5T+IlAXoOWlCnjsUkgK+Gvoath8jdQQnBYskLbUhLUglJXktIv9uIsGlzs50Rb
	 +azMBD7NircCNwzGA9HMelKWYTV7Lle73fyK/cOkFRphFR8qY0/8F0J9sUpyLDm8n6
	 eFMbfkMOQXcc81pOFxfEHjCBi840Q3B1v4psx/y0T2/Qt0jAM2WszEyuhcIMK7UV9V
	 5HVCLKyDdFpIMt3xgAkYYEQ2QyaQohDUhfUZRkyHskU7C8fz+By0rasfRGs1m6FIOR
	 eX15gAV0AEj7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5332BC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166363625333.3266.5123309738372038387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6528297dddaef5ca6f71f64571de68f60afb24797dc6adcbcfbda38647dd5ad
Date: Tue, 20 Sep 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663636253
