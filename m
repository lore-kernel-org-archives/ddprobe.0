Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C2A192
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CCD9C433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671058887;
	bh=7W4YPPA1hvgF1znNLrjp8FdOGShJooukw/IvJd/AZ5E=;
	h=To:Subject:From:Date:From;
	b=nwCgMY8p4YZ+qyj6ypI3ka1h/R/LnWA2wC+etr9KkD2gYTkG3GUVV8jXndexzOcAg
	 U5H2rGDDNsfoJdjg2lPuBvoUudOe3ZmiUjoO8NzSazdjuk0VIJCMLbiVhOcPNE75Ew
	 fbfUzTwhIE6kOK4mbJn4lhEhakJfGTuWcD7MxYdviykyke67Ap/bKDgo7nxiGR5DGE
	 Cm0GVTCi7A/8/fDYeTGmp6xyaREPp4okWPMPBPHx7+vj+VYJtgiOyZlk/ZJv8rcI8P
	 W+eO3gDMNizHDEiojAGDG0qQy41ltb8gGa9i1lN5GqzUTKRce9dIt7mjtSbVSyJyvj
	 H0sqvTBsOFLfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CD61C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167105888743.7682.13128387324493433479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1224cb14ce7a8c6a1aff9eaef2458192c0821104e76ab2e90233c4f65cda4c26
Date: Wed, 14 Dec 2022 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671058887
