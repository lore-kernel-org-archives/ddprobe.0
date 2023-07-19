Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20878ECA
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 01:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA5C7C433C8
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 01:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689728468;
	bh=iudAZBHMp69VYJ92/RtKhxpHMeLc8D2yOXW8+60CrO4=;
	h=To:Subject:From:Date:From;
	b=CgpicpeIulM0w6zzXOZ2U5+jnm0OwuHtdMG2V50w894gEb6+IK3M4nqZ8+58SSPJy
	 3pJJqvta8OtB7PODBoA8m9cam2GVfnn8WeXGNxDxwlm7FOTLvxNgC4fg+JVkPxa/Eh
	 cqr3RDaCy6f1KYexv2vf0nWPj8Iy6/6WDkaFk44GsZtONT7k6aMWDgCl/7IY78kkU4
	 kPEveNJeJ6KI2QVJP3b20p+6VwGjRh2PrfnltI6X7w9Q9N0MhvOTdwhvf41TZe2zw+
	 aOujTkzERQrpn3DXQtRPrbgMx6SO3e74l463y2pXk7p6VJiOLsoSHpVvfmZrxxG2A0
	 lLn3jwkfiJ0Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCF9DEB64DC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 01:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168972846880.27055.9648717811958392221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb88147a578cf0a99152473ea68a9f3440374397c8939d23abf914d10fb54944
Date: Wed, 19 Jul 2023 01:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689728468
