Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F6079C9
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 19:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D95C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670959287;
	bh=vM8VhPrsy2+fjhSWmc5kGJ9NDGO3UwTRszbkURvklRE=;
	h=To:Subject:From:Date:From;
	b=E9mJNSSlfs3Y+v9JfhGJuwdzkVPO9ijVuXuw9um/953vKJR8heXFBgbAl7nqDjl3h
	 ZV4MpyU0VLL+CuZr+cY3szbmsGqhnbZiELAg5FNLfzIsw1L9wXuckT/usicosZx40w
	 cIu8JEaDRWpoiZtZRSOMEPVUjmUM2+dtFlTP12zSHg04jPEMVagauJCHgSODsGUrfc
	 T259xWyS4S8weHtJ0JOcAawXo1PmLz/ox5eTCzl/tiFmW6jjfPQRw+WTK9Of91PL2/
	 3sOr8hVmVoM4HxfOYv1N7cCCFR/Lj2r7Zsq3DHWuGMCMr2G2FvNXcwMI94PjzLqzCx
	 +QGa1RHLm1B3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C41DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 19:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167095928749.14508.18062726773763228191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 084204deb49097321645f1a669582af317e8607099410dbe818b41fee7906064
Date: Tue, 13 Dec 2022 19:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670959287
