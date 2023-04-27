Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AF7615A6
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 02:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4A6B9C433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 02:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682561886;
	bh=cjU5X0JoGyOADzNqLgiyCbiitSvRr4XlUE1NZ/+3dYs=;
	h=To:Subject:From:Date:From;
	b=jBbBNvNLli7bjQ3vmC6eFNJBxqO4IjwEcCKmJ1oSzYGWBBIhWXY3Jbhu7t5NGvET0
	 HaA0Q/545aZVlnZhmVaIUV9KSrchUeXD/idLJ1YxQx7tHtJkSydDWFdJGWTJp2hgkU
	 SdB/eaFR7LH4F+B8ZhttfWXY6e/WzWuMwhSmHcEnbZlAgB7CvThsqgWgzWZBPIe62t
	 AQ7+oNCnYZ3flJ16nH31idtCOwEEI2mJxmCgG/Rrs+Hm+4Hz7z2X+SZXG5q6GuXzH1
	 nGVhn2M7jYKRR6Axa9KgNeoNLWMfyCs0tWFUkcAPNIpLOs3wBUzYZONcdVVTOxhpdO
	 zmPI7rK39v/1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14B44C77B60
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 02:18:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168256188605.10653.5742868641999984341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68a7e53064c08589d9b0725914b21d541e5998d498b8bf12075b32aece918299
Date: Thu, 27 Apr 2023 02:18:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682561886
