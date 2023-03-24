Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D3123A3
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 06:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E25DBC433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 06:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679638205;
	bh=83OK5WCFtyTBh5Gj61X8LiRarFTJ5r18wJCgc8aYF/A=;
	h=To:Subject:From:Date:From;
	b=ZjqVN5JWPGFJsEvOHxgqAtLSojpfW1mfZ3fc7A27KXTrMnp4YiDhhQ7dLd21ULicU
	 RN+d02J6GUwtnqEb9UbHtQpypFk7ATk/W+kq7U9JiQp1jUgstgaceHanF4skvtC8om
	 OLkHSqiwx7mTtrYWh+3l7eJlJK+B46khylh88zsqbC563gjG0Rc0uEvvwID+zS6q9D
	 TmpEv5udXZjL/Y0wF9dCPfdUaVqHIVV1+uITjiqmvGL33OSZ5xA1p1u0B2GKHqF1hW
	 lhZH0NPcwE4o49Alt3ktIJdEQZqHBIJUlz/ZOz5WuLctsmmM99EzDZ8QxKTBI6Nmc5
	 pZvxOzTrLHbGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D28C6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 06:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167963820580.12485.2870948692329261096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04dd9bd07d53d56b15297fee8d8b9ddd73c50414842a0f681789b09cac8b5e00
Date: Fri, 24 Mar 2023 06:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679638205
