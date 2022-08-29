Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4B89258D
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 08:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 773C6C43140
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 08:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661760652;
	bh=XEu2YlpllU5BstTIFOZrWihhZgXCZW53yxSJZurajwU=;
	h=To:Subject:From:Date:From;
	b=LK6PzoodGzyanBluuBJQK0We86AeeOhMbHDCx3kVpzsEJDourKOfEL/K3aDxFReXX
	 D8d8izosYzo/qmAXFMpg7q1GMrQ6m4X7aBsEVOfWnnyweAlgtEXb6UFdJZ/HHvXXNh
	 72PCeYwpzdbx6SaslNkkBwW9WiLwWAWhYqHnlSaEYViwceCxON12KgWXmihKSAO3lg
	 NzhQuyFKfOBXtOgvT1jvxuKVYVhF0xaE6p3YvfJstn/VREtp+4uK7++7+cjdWy/4ZH
	 akFUmhx9mbOfZE6YZH5j4djx70hCHwPClnkpRWmFbwGAnQuTM4zQ7zgMzaH+yHYbrY
	 UWDDcb+1qM24w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F835ECAAD4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 08:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166176065238.14278.14920517259234470141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d234d6f05cfc39849568db45a6b5dbfdfca8d4c421e6dbce956f1635367f5b5
Date: Mon, 29 Aug 2022 08:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661760652
