Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1558366
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FA1BC433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673499687;
	bh=fzmG/2i4YzyPGT6NXhDcVvoKmpGIwR3Fa8LYlgefTPA=;
	h=To:Subject:From:Date:From;
	b=kfMXHLZPuBZGkEi4lXbj7hkvdaKdgrzdOo5rrDbOi0osw67R2j6C9ZlwV4N16KwML
	 T6nUMR2sn7Ss8ycyvGVSFs4vfUYoLWvUn3cwGVqNfxi3v+lPzBeo6k4OMpFAYE/BFi
	 xTCHut2UKBfeqAQenPveCcHKfIB5L4T8ngsoXizk/D4uo0u8XHLTzxZHjSjrZR5HVG
	 Sp7zsW6aRjEblZ6fMf3pDTHIwdChVxSU5JHDMbNwrf5BbKRd+5b2WlNb9rvS1ZhZbI
	 8v7FO/anKbF7/GJ2FyR1Mm1k6DIuyRL+AUbpUCAenqaBwEoVFIOnUxrxCrAzITKXgf
	 ZuFsbYGNITnvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 653BEC54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167349968740.16172.6812804423820821275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7075ac8b9dc2e5b5db7a0334982f9bf30dde3c3b1d4ff0ecf1a598ac5ca82185
Date: Thu, 12 Jan 2023 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673499687
