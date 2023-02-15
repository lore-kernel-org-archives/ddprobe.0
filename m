Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB2E7B
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 07:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D474CC433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 07:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676447225;
	bh=eDcuddpdpaQWF3nwduezkv91A9F8Fxiau1fygeHnGts=;
	h=To:Subject:From:Date:From;
	b=njZ7Y+wyrUA/w0cWZovSX1PG0wBUuZZXil8Mkm9cWhi/MsZPVVhumy6EI14gsU53K
	 TKMq4ryVDsVgv87suIyHw95u6nXokwjMoWJY+AFH39NrOZCnsZDYYj6pKTMEyQnwaA
	 wsFv8xqdirCdjqvXzs48WNt0pvGlvRqGyGSIM6dRF8j2ydL05DNJ3h5aQpJ8OigJzH
	 X4o1VnXZ+eEyBBJZLu9urzsaLf5uo7oQvSbwgmqjczN6Sf4MjB5XHh/weTJFWNonMW
	 L+HF3h/CACrIOg4LIDSu+sD4DGDSnlZWfm8Wn7DOfwCPMgw/Q3UlW0sUNY391Us2Tt
	 cu6RF+PBSJCvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B965AC636CC
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 07:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167644722575.30555.4657976169203380624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19c8fb66d5f018341c96492bc913ca2a51eca380aa4cecbc089003154df8396b
Date: Wed, 15 Feb 2023 07:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676447225
