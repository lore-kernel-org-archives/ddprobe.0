Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE6B2CA2
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A09C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665487253;
	bh=y/AULH6qv0Hg44ayQolxAbZG4eU2BrENXrfO1tlV5kw=;
	h=To:Subject:From:Date:From;
	b=VNLqzgR0FAD/I8mWJWvFx0/HzRfPXg7T8RLEY4OZ0WfaqpVjdHyPvvMGbrApCF9Fn
	 xAaHh7Spy0gHW4tVlobNbTltG26sOFqBFXbYSomylApIDuMEWmL1l+4ZlgqIkOPaG2
	 J3VR72uMIeigtv2oCknUYK0U2kdfK94u4aFYBHhBSXB7/glHQ8wE6pZKaRdEjRWwXD
	 IwpW5J8mth6lLETYH8WAuE1VwMTLBO1yceoRuySU9P8VrWMCRfFLk8mUSgkDcQM3E3
	 7gz+5bv2DCOxPeY0DfGY1uxLw6R3QEMAd5kegetcKWGnBfkmkVon0DwLxxfPUHC6qF
	 hxnvAnwfpUcPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 502F2C433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166548725332.1798.1723376162661576110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84752ac348807fb0bfaf92c959f98a80e52840fbd3c57151b84f6871ec38a77b
Date: Tue, 11 Oct 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665487253
