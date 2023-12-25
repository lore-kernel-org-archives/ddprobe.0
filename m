Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1384B52F63
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/nCQ7M7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84B8AC433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703515696;
	bh=ANM2Gl2VEK+gHHQ+AKkIbeGQ+Bbr9DueaT5WyQsXT0A=;
	h=To:Subject:From:Date:From;
	b=o/nCQ7M71e1uus/wQqU4tbqRMvMeuINHYww78oLE6ZjXkE57r+Y7muI0FH4u4RpRe
	 rN6Uwo4QEOxb5ftCNeoeCBf+iSpA53fOZjoAQjvJlDRIfZrRHeOZiifxakNE+RMg8m
	 VJYMUJb4DIiaLkm+NI4zS/D+vO72czWZlWULK2WVFgyMAMj83IwKHxbRKwBAxn7pEk
	 XKkB881ObkYhEX3/IyfQDDBdXHnNk2NlWHCxwu4yGPb6jEMiNxmChySuUBq41bEMKV
	 oDz7Y50Udy99CLtF/m2juhlXjcc/9YZVynPdZiY+5kP3cOclmcvTxyTpHjC4HWpJ0b
	 aHKQ/x9mUJAYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 656ECC3DA6E
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170351569639.18224.9312600984845729810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3519cb88eca51476423887a0e88cdde12afadd3175a670e7812113ad657d1282
Date: Mon, 25 Dec 2023 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703515696
