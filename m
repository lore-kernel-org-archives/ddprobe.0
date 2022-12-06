Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E35A66AB3
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82EC3C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670333454;
	bh=B76jeF59X2XPxaZDLlHCd7i4YaK9Y94t3uPsILsJmeU=;
	h=To:Subject:From:Date:From;
	b=l/sg3fS5h+5fxmlJIAGILsw718tX+GEhL0xw7VnWIw2R2nqfgoRqS7q6xl5WpXEvT
	 VX8aFO8kTu8mV4JnuleLHuEILcdbH1VU99Q/EvGRCdAHNo3SHGb+oys5oWeDh2TjDz
	 nkCxH3oJL7gEozaCrTUWOwQWEh+4TgQBDaJ4is47RaKrM0+Sq1pBhsgysHX9kTuYhx
	 /pPQ6D0ixSFbFFxHpNN1Wg76Rn876blYzS/4MdPcOqfQwwIPkC26JFfhT8vDuel9oH
	 rW3mzPDEsopNViUeZsRTHRzqVnxPl5IcCozWZ21fkSpLJmxGr21XDK4Uy4t/IXhHiu
	 8JShZS5tfIVdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68AFCC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167033345441.1215.9607309217937073371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba8a4960ccaa726bb85ff0672adee13e407fcd981ff73efddb07cab8c8da669
Date: Tue, 06 Dec 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670333454
