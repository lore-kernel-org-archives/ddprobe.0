Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6FCA93D
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 20:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F25C4C433EF
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 20:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675196586;
	bh=Gh3Tvy19xj1EMOGyHE1EiSBARwjMIAJw4VZP7SKahIE=;
	h=To:Subject:From:Date:From;
	b=FrJ3vapKbUb63ws1EF3VG+9JXuneJeEdDfnEFRdiYAUacn3q88na32R40m1dUs/Ps
	 x9yThvOdbEXdQgSCJ3CRHQnksdE+f/0rMbLKIRiTOEdHNNEUL6YEt544jPrPSWHQKb
	 Xf8qGr0p5y/2n7os7W38vZ2HFJyaLRpHdczxfVEpNvxzZKYyb58RqdORZ1sn4aZPML
	 sB8Cvuoh0MIZVLgvjefozA1hOAoSjDobrqzlT30GpwBHfQpxQviQojHtO6vYHmiTtm
	 Fx6bOHXgICeoZe82AnRYs+p7dszH2dBgcki+7DWDw5Bo9ZjM8SZmAVkzc5chpOhXep
	 4ijm0NYSl+iEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C1EC38142
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 20:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167519658579.9948.12523447437336866188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a7bf4992a50a99838a97e21f65c3019b090ec361047bb1a0eca81a6dfeef0c2
Date: Tue, 31 Jan 2023 20:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675196585
