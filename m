Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96D9F17757
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 15:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 16FEFC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 15:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686326166;
	bh=tqaNeCT+hQCjIJQXMUgp3wKGxI52ssa1nZI8eSsOBLA=;
	h=To:Subject:From:Date:From;
	b=QE8W9Jr4q6lI+8X4u0mQ18d5pt3QatmekkEFbJct1YjVDCXLZLJesaHTbNv6BbnqY
	 +/VppDpNt3xGcN1BlmsSXxhXkq+aqjtlE5Ewgz+ndjTf6jUDakETBoTbK0F38udQL4
	 kt8fXgb5mKU1E1dqX0N/i9CJnfCSsI254qwfZQEMI0vJkVRWA3UOycfrTmudNPMupl
	 V5eV60T4xOXglE9dEG7b8Krbd+A9o/Z7wxGs9PKcy49zSGqiAae87frLCopYFeB5tK
	 woJnbu8Y/IaCx8aQcBIG2bo1OQItv4G/KZLnZBPFOqAIjFE2AMAbRXk3iWBQ7Wv8VB
	 Mi3grUp0Vh7BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8B04C7EE29
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 15:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168632616594.14530.420805024957335402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de47ebfee795496999c37acd32c4f1e5274da611f5d0c79521f270129bed114
Date: Fri, 09 Jun 2023 15:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686326165
