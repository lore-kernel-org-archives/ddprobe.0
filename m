Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 806427F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 02:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C15C433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 02:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689906728;
	bh=CnZ+84MSPILKGhL6kUrMhG7Hb4smTzdhzK2i17LlIqo=;
	h=To:Subject:From:Date:From;
	b=dIKdnrNrYcuNn0lDUz3di5NXUDbJ8E9dmzeHR7L/a8MWaiek1WSV1Zp7KfOK3m1oR
	 xZkZr0VpzOFsex7LyIwAHjQ6LJJbjcphgQJQhPbOYXm3nCgpGH62HoK0C54bxshfmw
	 TNE4uVI7Grp+3d8+gu+H1XO/7vvv8bItmIUzvOCl4hEsoUu85+1xQouTJKvqVOU+JS
	 zdnEvInMtELIS4FWDPAHWXf1C7u+ISo1phiT+5BxZNSmKbG/n5zVVR+H38EIatAm1H
	 oz0u8QNdnSShB4YT8KLpsV9Hu28CMNWccIjXiiNT17attaOo82ZB8qbpfEzjQZfP8w
	 rHtRgbNhTptdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0596EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 02:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168990672871.14826.17859581580196666196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b110319e91c7ba1a77f13edda304e6e7de14f7206025245326ee6ea3a23ff512
Date: Fri, 21 Jul 2023 02:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689906728
