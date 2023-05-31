Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0AE20697
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 22:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B6FC433D2
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 22:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685573645;
	bh=jfiegH80BqD+xKGkMM/uTxvUI20shf0CpEOYId1YT/0=;
	h=To:Subject:From:Date:From;
	b=MgAQeel19unthzpw6ooWjORbYSwvkjNTw/JyIPj/TzCFPATcQxSSBWt0SGS3h/s2N
	 kzpEbTpups9PshHg/I9idj1yam2BHO+nA4FWKvJxVxxvvLZ40XPM1mYHRJzaOgWpID
	 r0rJiuSZrbUBfpaUvdYC0LY0fRlGM4fqVH9wEYmrtfNwuyxRj3UWC/eRUIDkKGwy/V
	 MKQ5FIBLoDL3QqSJj7ZOcs6tMVrhJkcvv4Mz7N9muSyiYJlpjcVXYKhJOfWonkBlWk
	 Hy9k+3rnDxUQ1aVuUzZz5a+ntFBQx9pjsmBH6hX0mZbKubxarBXczW7ff5f5yaeWah
	 X49fyMWsY3Xmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C29A3C7EE23
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 22:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168557364578.3754.7416303628195483194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e05fc44351a2f3f7175a4bd5c8d981233ff891024f47fa3eec38d39b4a8339
Date: Wed, 31 May 2023 22:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685573645
