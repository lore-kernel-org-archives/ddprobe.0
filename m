Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB1D634
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 01:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0F1C433C7
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 01:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692407048;
	bh=TcD8N6nF0zGnyVEIT9YLplZpCElI7U2VtMMB2CW3cuI=;
	h=To:Subject:From:Date:From;
	b=JS4PpmhI9j71A69DZqOkYPqTrJjRIBiZvP7dGPUa2KzITKGA8DUBuC0MCqgrDyrNP
	 SSfYmuZV/rH/RJ96/teIAaMkSdJby0AXC9o8tG7+WcF3z5EgFHJ2QZlG3R29KWe1xT
	 RgwDqoEj81cBLTT0fBH+KSfTCE9BL9tJUTg7AKiRO7BWb/XORjtpDOUIN22sx7jba9
	 OwxVj1bsiG2/cEuxAq/XFK+KS3IWXdUZeDEj40Cl89PoQ/f45QvAc5cLayLEsAkNmV
	 AIZoRcYofIfwkZaBeZuJwT/TismTOMfEstrr/BrlfvrBMPZSSQt9seJ7o7g4uXWC1k
	 f9Hsv/JtWgGUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA10EEE49A0
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 01:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169240704868.5300.5144955929206491322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2c238ba6aa0e21d1571fa42f3dbb3fa32b110f71174fb196738496bb4dcf7f4
Date: Sat, 19 Aug 2023 01:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692407048
