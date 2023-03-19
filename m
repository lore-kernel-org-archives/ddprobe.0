Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C857EC
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 02:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB07DC4339C
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 02:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679193186;
	bh=egBpoJCCDUCFZq9ZwPH2yWF8Mttj5q3n8KE3CqLp4fw=;
	h=To:Subject:From:Date:From;
	b=mFs4hwHSyt1txmr6QxshFL8z0nQWjK67/rw4HvDQKLizCZzmd0+ba6u+xUBIQZxAP
	 UCaRnmTGz9Z9W/cugH8Sxb8Yi9GihOAEY7Uyl5t2Sh3AOZFAmTmn//YEbaaPfS2831
	 jIvcG4orOM5nAT8PjowXDsmc6hmz91gpVZrcZM7SAxsZQuoPmEg/qzYtoHRO+Y8g5U
	 nMyNF7uVJqmvKU3UZdYz+omnvasEQZ5h1fGiTIF4jZ6R0BD3NfPTG2ey0BXMJQU0By
	 g/XO3cXCvYRNrGGn/iAHBBoepZVnDhkAgcFr65CYPvDuOu9RrSFKacR7wyWwznAZYO
	 Jo9FOz9h45rUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D02C74A5B
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 02:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167919318577.7566.6636730671654810530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7a7ef9c9454ba79dfd5212e6eed07a0cb9ef55a8780aec3d5f568e03dd14ed
Date: Sun, 19 Mar 2023 02:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679193185
