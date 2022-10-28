Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB2CA28E8
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70ECFC433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666969254;
	bh=TVVOW9/UnJb0puIOCKRAjwFXSOUXr9iCgPWppRVzHic=;
	h=To:Subject:From:Date:From;
	b=ifMiwJofxm5EdUZJIxRpu/owxDUxAu0Okt0l7iz3MRagaEwcod1FHTrHY6+/LBOvM
	 B3XtxSOPom+S5WAYK5FzdvrX0kWQFR5xU/Xly5ydk4kVQG+4hyo6d2O82j2ZIVqhTQ
	 bLH5U/gPtYoFyCuL2h/Z4L8IfzKN8eaaVzFJvpWGI30bPegZcqva6aK/Zb7gejxQQU
	 A9yxquwmIOrjoSbgJFHHq9jy6N2eXARy4+dKy/XvxNXBR9YvkgikWV05vqZ+lRHDib
	 6GvCddNP4czxYQad2fPwKzpsOyddiKDQmMc4rlNbROAlOFmYCy5v3eMFNiN5n0Yf1Q
	 UyEmMoNxW3Nng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52D0FC38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166696925433.21295.368939975511690112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15907ec9b4b7c1cf5b412faf72cad76e067719d7c05bcca92c84199eea38cfbb
Date: Fri, 28 Oct 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666969254
