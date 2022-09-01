Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDDBC5C82
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 15:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69BBDC433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662044453;
	bh=ZimP+IdSd68Tc+JD077xDIS1lRaPnaT22dW9tDFnjUc=;
	h=To:Subject:From:Date:From;
	b=AUMG3mx0+j774sFTn/9N8j5YvXH8o80Mlcc6Nn7Xifl0YHuLdSqHt1+P45IJpa0td
	 3+cQjTM5N46s/BHWne6imhO93IsnSb5pSOt/YrnijUaiHo11U+AVzq2LkTbYlkpWQ6
	 ApLYyLarcJoRy6EQqF24zCBZzXrohJVOhogfOTnVdkYoVe0RCTr4FSgOUddlmdioqV
	 E9lGzkYhhiTOo1F4AxSqYEf44skmR6Auh9uz650O4iSDO9Ymh+Nwoq5ZBGNht+1OvP
	 FlSMCtzwWvmYUxfKyk6LonYZG3bRCQUVP0NHFdPMU72kXwjX1W0soj8rXc7lCDFytR
	 5f/e9DbQWxU9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 531CAECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166204445333.23048.14809184423332722568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65a1172a188c6bf3cbc1dc6fb0a7e27b522c79104f91eed6ed3472607ba60fcd
Date: Thu, 01 Sep 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662044453
