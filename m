Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D8CCA7B
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuyTegFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76089C433C9
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702610896;
	bh=euLgsbkkjNQ8AJQWKohsrbsfS1BLzA88g0FkdP3c6U4=;
	h=To:Subject:From:Date:From;
	b=OuyTegFT26cvJg6Uz84mOThmdrlfGI3nmJc0MfxblVHNDXtZ5/FyF+6MICVWw15sd
	 c5WdPd/qOfWSftfF0GPkbpdYqBggtzfcyMP/LzD9s3UYKLi3snehLEjsGZsBf0exxw
	 xsmIYd5SUG8I92PVSTbie6jaKBANFqS6jodn7rnUAvXJxenmb+GqRHw0+lauMOwVCp
	 sdWmfmREb3+c4d9AkDS4DXhRbF193EA31iXoJbPUvc9+Oa2KC0u2F1Yowtjbu+VFN0
	 a7JiuUjW7+Zioy7Apr/O+wdUZx52SWnJ6p1OkOkJjgQrOvncSj3S3bMnncN0uLDWZ5
	 wnpVv1LjEKXkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D0C8C4332F
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170261089637.17466.3673420365550204896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7ffa91ad210c9b094e89b6db30f48eb253909b39246a9c0bb9d5e7b516542d1
Date: Fri, 15 Dec 2023 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702610896
