Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33995667
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C424C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672680087;
	bh=UvlLpKXnqlqNjdUM4FEvDL2mU3bl3A3AQJl6R9297bA=;
	h=To:Subject:From:Date:From;
	b=oB82bPGKoN0pMTdLogiU5ydXmOW6L5ZQ6uNhtto0C3+RdOKImziDUT5yDKqlIADrZ
	 73uY+lGUM6JbbbFanKshlI4+LNPfdh5Jw8diEdP998HxuUFrWvPz33hz5c4tDb34/P
	 SwzaY7/ozLsa1JPA9uszkGz+OE6yC7/LIFT5fJU7voO5lpYp5BfwNFEiaQHdo4iOOE
	 Aanc5dbWr2Y5ev/PCMthbWC/L16oYZQktZUvw8SJKzdrYtib90/+LSAbt7qndF5HEQ
	 bg9za+ODur/nk9Ta0wIqFqT0dKhHSSYUzp+fKQ+iIxoYkjFD6vQCgdppSc3N60SR4p
	 gQTS3mMZFxGAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FE00C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167268008744.18546.5548826981568445714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bc7cd038fceadcbfd86d29f078486209dc7529cbb3d26ccb8b56f3dce444953
Date: Mon, 02 Jan 2023 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672680087
