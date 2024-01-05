Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330FA6121
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPsPOr+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6ECFC433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704433096;
	bh=Tf4zdebXBKlF0rw76VzDu7Wmf9xhM56p+7nEQ6YVIPo=;
	h=To:Subject:From:Date:From;
	b=VPsPOr+GHs6gigUfIp5p26CpaJFP+Aglh327Wx7Y2DMwt/N+dSllLhxgVecSqwcUJ
	 bf47OkRVCKnui9msIXURdVQWPsF6bpZEGK1DqLeHl28xzBy2L2FaaXf1m6KH32RWfd
	 94fuPeU1UWlrxAwuTZ4UoefqINr2C3CgPIWH2K/xdS+0JQvoLoREdxkccrSQg8enZP
	 31gxtu85up4wJmKbSeHqqsWFIP5wE7V8khNZ72zD+VEQx+JwWUM5AYKmibtlWdw7Vq
	 3Ac6FVo2qqB6sSSmB//CHCeh5VO2L+dvln4Gt+fgz66fUrRKsUxlJXXE/H+Z9t3mzz
	 Mn2b/aXZYJ/KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9AEC3DA6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170443309656.22541.18404806305602494682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc2e236bcfffcdc98bb45e4fcbb93d373ad7271c96817ad279c2f0ca21e79389
Date: Fri, 05 Jan 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704433096
