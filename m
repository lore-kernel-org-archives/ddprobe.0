Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E3AEB8
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 04:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73D2C4339E
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 04:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680063305;
	bh=etO5786fNcSHdGFnzDx2v63m298w0I0nUIyZpWQWlj8=;
	h=To:Subject:From:Date:From;
	b=qVAP2MDrlUxIbVwph66tzt6MgD5dp5k6EWWGMKxxkOS4vi0n5S4++sRg7qC1mlR91
	 9q7a/1IzcjZex6NSGs4NN9Umk5SyUr/q64VfoAQgwIUQoWeqf3QSrgngP+hBIHsYye
	 0oiF2+nkEylJZAHZo1Szvk8CNBAZc7w90D+21zVCcLZNwaaXMrxr7Y/u8UvJGOJnFv
	 OVTa/+iMLkV7Z+JWA4+3JR4NqV1GVZnYj4r+kytloKh8AWCdhQzg9whOr0HhErPsgl
	 kPyClgmpNw/1GxX53kpRQyHmTTBd7daEYUOxf65Svap6jf3NISIrOsrU2nv6Pof9V3
	 RTFVLf5myPatg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC905C74A5B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 04:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168006330576.29784.2822724032930910572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83943e1976b48951c718982b75ccaf29f79214d8985fc669824f1525ea53fd04
Date: Wed, 29 Mar 2023 04:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680063305
