Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61D07B
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 762EDC433D6
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664116853;
	bh=z7T5CoY7J2TDQGkvqOP2XbZfIT8ImVbWXZsLJ5dpN5w=;
	h=To:Subject:From:Date:From;
	b=HaXitT99LBCaIeP/bM7PX2cglAP/tRFU/hOVWIIzFZL2xDdwEp/PqstRB7FsZ/p54
	 GlV8Uq5cVEEwzAj74/YH8+26+xu2NS7he6P6tEEvnk0Jl3AaKIuwESSH6SLgi1lW+Z
	 CSunRLiXyFldF+NHrqjtFTGaUOwhWWK4P0M0bwUMmzIbK5ITqwjwhCM7WO5UhdZ4wz
	 LAgbjnUqB6up5LMUfV4oHaDf85qr+jP4OvId/IOXpqTJmaYw6k47Dp48D4VbyC7n0N
	 bJAxHsNfbWHZWn72/8NIfD3kzgEEjwnTbMaj4dGp7QImet2JAH6GDnP22yZ9gHexzO
	 ka2eqhg+IFVvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5717DC54EE9
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166411685333.26566.6000851424360025506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17544d8b2ac229a531980ada540b64a0cc0be037c039074fa5a0bae8b3435ea
Date: Sun, 25 Sep 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664116853
