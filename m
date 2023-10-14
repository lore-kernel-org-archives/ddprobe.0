Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F2791852
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 04:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjH80uGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C7BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 04:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697257028;
	bh=P4Krm92SALXohTgYxpo6oGLFKCbsQEYXBq16OWeYoGY=;
	h=To:Subject:From:Date:From;
	b=LjH80uGVMBSZchUOb52fQ5Lzrqgxx2UWL5MED/H8ZCC1YvAGADkDyQ8EBPZYGGsqu
	 OmP27voPa5L20IB9Kjcwfrv/HUsmUO7TCOrE77ek4HcgorgvT3wfMAKyGj2v0ZW3Kd
	 ICn7p2CSLS+57qRRsybRd1HvewNIAHNYKHwf9dVjk7ofcEI366Zx0sb5Tj1GRBUEcr
	 1e3VaXWCQNcaIkglkRL6KdbBPZBdxusecyntxtOmyAYLCzrDBRCMshgsAQZk3SjdAS
	 A+/iUSETIN1ixLQMHPoVc0Y61POuDKlAnWqmZB+Nh7fu2bkg+z/FM3EI6yFluATgTV
	 S/Ub8G5ZzlB3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A60C2CDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 04:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169725702867.2737.303375538497046289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92a74113befbe2ec178393bb9348e3ed4177b8aae04af17179faefb3530cd8ee
Date: Sat, 14 Oct 2023 04:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697257028
