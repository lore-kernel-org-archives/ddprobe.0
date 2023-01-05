Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE486EB0F
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87C02C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672940487;
	bh=bcByfPVsM7zy59HC7J1mVH5qdrOTEXXzBk/dJzkk3xE=;
	h=To:Subject:From:Date:From;
	b=oNmvZxVaD5AmUwcCRFipGsAs6w+a/AJq1QQphpJWPFrmxtwhEdyln/d88XppPLTW6
	 lqApl0oC2fRooJZUxl8vTQrasuew38ig6zIDp+43VYP6HhRia3WBo1eeis5B0dovtV
	 uXG1ufSmrNuacXSbC3B7expj9QLBmi1Bh3FKRU1+y77TPjAqmuekkJkjJnV1Yj9JmY
	 NZTQYs5ELxJxkgFFukfLIYY4FBHrVR3w+5N4P85iHHR6mihvkPGqRkdXz0NJPL6DRz
	 d9XZK0ziXaWJ/GDvOkG/rKKKQwRjdkNkJJJdPiEe2XHcfT0p6B6yuTL1EUviUTIVHa
	 fsqdz+TVl3nyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A957C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167294048742.7640.12537375645758130031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e10b3924682474c345fde2d577e055018c64ac813980d67c62612413d2adf6b9
Date: Thu, 05 Jan 2023 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672940487
