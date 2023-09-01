Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AFC2BA58
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 13:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE5C2C433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 13:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693575248;
	bh=fhyjZek3xdOHX7I0TKKA2ZQ3iM3mKovMvUaUHWFLvtg=;
	h=To:Subject:From:Date:From;
	b=KPPKzTiH7yNvCFheWbhAFqnXl/SrROEh+Shq2kFVaKKfA+5m0tYF5U1NiyFR8uY60
	 ldbgNI+ad15lPn2n8QgST4CVDGDoJWEK/WDXdpB2rqjoWv30Pmz+V6njVAUtD1iNrS
	 Xs06cYTajdHr2py6UIvsNakNOSrvwPqvnvJsvhkoduyvNDP+CKfp96W/lmOfCcYboH
	 hU0k4jeHcGa1UeQ/Hg/3mmOqPx/G5HV+s7huiUVCDL2xyIL5KuD6VHdTYdGbWqqu0E
	 a9lLj2dJgYOwtF9A/tNlpvJo0S16pvHlqSIWO+j48eEE0Gi0iYm5mPOQ4NxDYlRY4i
	 we4gT3G18X5gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0DC5CA0FE8
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 13:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169357524877.20454.2707153284839198921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b4d3d4e595b25d012ba5853ba60ae102b4588ed7f4888d4378b819ca81a8174
Date: Fri, 01 Sep 2023 13:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693575248
