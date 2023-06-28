Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D7C91847
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 03:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E36E6C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 03:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687924388;
	bh=4xbHWOSUcVUrL85fNcvIJCTq6Q2H43iU6KibSVeeH6c=;
	h=To:Subject:From:Date:From;
	b=XmxBm/JAr4lJen7OdIsKBvTmPmUk8z5/O2w0sCkQrkOBDJntc0Z4sEYCQ+96LUojJ
	 4ehd3PWID+ABy3xo7gG1C0EprclJ7WulO2uILoA1hAxQ3L1oAB4G2HtecJMwURdrxz
	 ij4K68v1AtPjlTMCNNIEjjtXLvYJhg9/PLUD0EU7vOIUOOXs982KPxXRk8TMc1dEp6
	 adtWuhgRy7lkt/GHGTw6ocTDLtpmRbE8qttsokUasV/d6GvNInJfnu/RdWeY2FDTQc
	 xAngQ6ng5O7NRonZ3W62S5UF+TVakhQKsQB28jDvQIts8J/87HNmP1tbcnpU4Zc/XT
	 S4SZycCVHCNWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB75EEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 03:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168792438870.20977.4159024735150938716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62fd6c895767effe8845a45ec90755816308a260e0f1eaff0b369b8b2a23791b
Date: Wed, 28 Jun 2023 03:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687924388
