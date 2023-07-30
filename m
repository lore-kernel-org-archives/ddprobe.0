Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72C9F100B9
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 18:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DE6C433C7
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 18:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690740728;
	bh=MSwCGhdc/+fI6eWgBsHCuSGc70i6SHU4feJNC1a78Ps=;
	h=To:Subject:From:Date:From;
	b=F3d5oVHG7nkpqP0dohK0HCu0kvw/q9/GUbgp9U/HwPnSbTqXix/BWQ526vDJwPmNN
	 ZeX5+o/9K7dXPfDMDIM08W97orWXE1T+1EB7+2F/0vxJscANgQXGopJKQFscJ5LCYa
	 p0UGDDw+vy9NlMsmEnPbdxsvKSeg6eA4nmHKlMY4eHyDM/5rz+85n1B1EkeBHILkam
	 ErPPwajqib0+ijvAGMPfKHVUdxdsjgWRQbnmc3pjDq6qtYYpc5e1EHf5l23uPLHSH/
	 TeAzEWEoBfirEgFxjNoBjBNsbwdGNvcPGKHyffRn0XOoMPqFdpt1+9SCkqwuUbxGuz
	 IcVN3/MuoHlEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6B98C00528
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 18:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169074072867.17190.18221784923682144245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7310b5abc20489432db7693c83206cdcc820d933521cd43fcc1452676f7ef203
Date: Sun, 30 Jul 2023 18:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690740728
