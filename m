Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7F63FEC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 08:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD78EC433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 08:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688460368;
	bh=MM6/bwsrAAcMO5/b6ifV7bQfwyr7ko1PU1cRjOq+pMg=;
	h=To:Subject:From:Date:From;
	b=WcdvIEgxGRN3ct0EeVOsCMuvL067lQbSRRhzwt9GmbFjHkDwYKao5lJWkXkb0yuDk
	 wLcUuJ1Yuv3hz5fLUtwq3lCbh07n5fRqwZ7+JJTBhzseI86yR6x55JosO+XqMd9fca
	 iCMSrvGoh5lWg+acKNILLL/c2CVWvgoqisqudHpfZv7Ol1+EvkQLHCZ+bq4kYxeen6
	 Wm+Nswtkg9lpLfG7SfL96pakzds8AirvJWHH1HB88dGTd1djjDNMuTPp4UpF3UowU+
	 IBeA4xEgiqVj+8HhuswZlTrI6khemvTVZaXzB1Z98+taMXO0rFAEz10HaXUnZ09gK7
	 rqXWppVV6cbug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0408EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 08:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168846036869.15548.365590095106855093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9df365d41d7eead272c2a8d866993f583bf976885ae639cd4ce80f015d9202f
Date: Tue, 04 Jul 2023 08:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688460368
