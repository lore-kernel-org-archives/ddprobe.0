Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C397EE804
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 23:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 684EDC433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 23:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666913454;
	bh=X/2AeFK5kp3Y66v2VED2U4mjpNaXI2fhkMy+kIy/WwA=;
	h=To:Subject:From:Date:From;
	b=YR2FPuiL9WXOlMMUJG1ySUOU9bPYQdubnq0RjCekK+99l1yGRVQD3YarOLNtB+1u2
	 6ilg7xWuB9nunin67gBwCDCuOvnjfkttzGx0tSMJLBL/ZzfgEJ5tHKblUOijE8iX5U
	 t1Wx9VYOIFFVu2dj0e5aIgDbaITyi5liTu8xb1oo6JM1/V9GqtaSpfoTMqEFg1RokF
	 UjtWW04E1t0VCUC7WBhL15ZV75AqbK+IcajrEAb4+j5klYdrGrAy2YWwjmLSiy/In8
	 Mwk9B74QwPAW5awf8QHRq1eg95tBvG5KV2RnqYK+guQ9s8T1VZXBGwcyHi6jP9Dd5p
	 OgSkSooF8wV7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52BF6ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 23:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166691345433.1450.4369263964743708392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09f112acb457ea93344f4079caad45abc66f3f44aabf72c514501abf3f36aaef
Date: Thu, 27 Oct 2022 23:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666913454
