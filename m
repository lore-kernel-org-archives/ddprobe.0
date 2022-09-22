Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B80918B13
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 666CCC433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663880453;
	bh=TGVWG4mY/Xi18YmdPl+zLDvLxFn3qn2Zwwl8Jk5ugkQ=;
	h=To:Subject:From:Date:From;
	b=EKAtlvihZUwXPGqae3REtb+gttIptpEr3vorf7IjaYa+xuLRLf27U/vfPrj6oUcly
	 GexRf5wttdRa8Kt2k0qhtD0R7GXk1L3/m8TlkLNeFW2yu04NW1Hr+T5aAJVtf/FRSE
	 aeqW12NXoM64RS0mGHNZbPobA8JsiCxXDdK42IVH928fTVP0qw+zj6u/ajLg7cL/8i
	 2QvgDk+WF9RupSkfdQGrNlXu194ni2R5icxP5XYTZQR4vyGSIk1rgMHQQ9hNM3oU+q
	 OXTruNWzXBCNIfBGxsou8kcnWLhvK7bfCK6fATOX0eOk3GXmZo4mkQmnVu3ps+WiUV
	 Tx/acwbOgoRuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F196ECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166388045331.21643.5520017311339501700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d8bbe6c15c4de89ad8314f5c54b62cf1bf2461f6e6a285164acf8abf289bd7d
Date: Thu, 22 Sep 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663880453
