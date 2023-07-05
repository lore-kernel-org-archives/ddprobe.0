Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C5C63C
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 01:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD14DC433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 01:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688519168;
	bh=7jtO5NlyX7nmhNQvQsGXIl+XtputdyRl7mKOyGn0cTo=;
	h=To:Subject:From:Date:From;
	b=QIQEjJ1r+E7j1CuOCRWfWhyFJ9Pr2Sre53aCyhtw9d+UsmmX3J4zbNncWQIoXrV9P
	 5USwNLU/KttN2DWAWVQ82R+1JRL1h1c1iIbIEpGL879TCkkMCsrlw84Y3fjORlCnbO
	 RWYk6ksBnqsy55tKAoSwobeRbmC7ceXCbutN8riDIit/wGbygiooSiu0x5N7BS6ZOi
	 oNuc+fxQQ9pZmIecyPhMzhKHnF8ZoP5VPMXR+Q+mFvuw0AaKppTI5rVYAX7MqJq9cu
	 VSvYGXOWbKHmlun3KjtBxzCD3RfV2t5+s+vhlheXvqMz45SE2ycUWF+8Y4CCuN/m2/
	 jCsmfnQbwDWuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BB2EB64D9
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 01:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168851916868.27384.6652956213764210076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd8c7777f936bfb93988869f6f0e017d0b0daaa43794dd140a4b0bd56cc8a83b
Date: Wed, 05 Jul 2023 01:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688519168
