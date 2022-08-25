Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF8692F28
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 12:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C1A0C433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 12:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661430052;
	bh=NZMoPm8+KreIcmzi9Fy1vT63xipUOqnL0ifJmXyRJ38=;
	h=To:Subject:From:Date:From;
	b=XEcJ312f9qbqsoClcOk3hr+BHocWok1AU1esn7wqUh+5TrKp6c1EHMSCbiYLHGkKl
	 81s9vLJAIRGEObEwErw2KZtYdZjK8dzIXpnV+Oa7PxK0JkwGiqjN6tArTm0SmiiSpH
	 1n4m8YkhywUG6d6dmUbUt/lWg2B0tXePmLwv9a3vyWIth2lWIdKjtsEVD/IXuTrRWH
	 HXrKnUdcpBOH7jIneD0uMqQW3Cq/prZyVztxGSmcPtyerxiV+IvHo3d7H6kcFsJFE3
	 6dfToP/YriAmMvX2oZNLsnrR3cQeBYfhe5gbL+Nkh2Y7fAzkYxWSEL5ix1mSMG+Sx3
	 n3r221TCwUepw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65A89C04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 12:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166143005241.5357.16398166198365225034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66755f9056ed6e4d9fabddd8131e49a7782b336faec35354605cc012ae32a13b
Date: Thu, 25 Aug 2022 12:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661430052
