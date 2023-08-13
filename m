Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522767E
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 01:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF1BC433C7
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 01:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691890988;
	bh=wiq4flzBg/COcDTt0Qj1Gz9bZWE7TnhVJed1hVFNqO4=;
	h=To:Subject:From:Date:From;
	b=FyzYPn7gkaRBsrBXqbQzR6SOHmXINHGgcsuPGYbkGpxfes6xxrLBMXnIiHv4Q69SG
	 EOQktWMU2HdbooaHme5WLFC0CBnA2i59N12wuyvIHww1bkVRxtvMrrFOFUcmSRbA9d
	 6vItTysDLoe07vBjpyZidD5CT7fUgs9ojrq5hARIM1MUqHzS3yrxWfGZt3YmUKQ3+D
	 kVnYTfa+dFYwqXj1eJnLC6ta4PSHiE71TPB5gNRKiVgdpqKnvQdNrYDGBcKTKxvx7f
	 4piPtihSFm/6ihSBCRm1M3cqldDVs+SejPfgXOMDQ9AQ54LvExCOX4CXZFNo++vBXS
	 dwe26iGoGT6+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C9DC001B0
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 01:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169189098869.6238.8460216254533855054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8527110dc0c35db5d7f9cd3e79c031a64f9ce059bdd93f557b3011a189bfba62
Date: Sun, 13 Aug 2023 01:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691890988
