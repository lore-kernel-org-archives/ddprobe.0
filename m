Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC4ACECA
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C103C433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669099254;
	bh=C3m0ik7EwXyoozs0M4kN94kaZWzan54kI00hZbSHO4w=;
	h=To:Subject:From:Date:From;
	b=dcYz9dbEmsk1uP7dY7O2DV89PvhqaMFZeZrjgCdFykYjEMlMhRws5QZwmeADENJ+u
	 5K7UOEFWTcMry5gYr1O2eTX0FnO80djYLNPB2w8jXiCvOt9I6Mk/gpu/XhMJsIr+0W
	 xQD8cQzz8VvC0alO63GmjdHXRPPu6w+AgOiOfQrJGVz9DGbh5UjAP2iNxSnNZBwLho
	 WmWmOW034mQ6p3fHLlmMN/5GQwX5XQRgwgTgEgWc4r/p8daUc6qUJS0AyUN4wsk2b9
	 eXgRaOf68JxMHYVLf7Wf6aULmW0lnjdGyiBS2gTk1s498mD0kpZe+JaClruReItm5Q
	 bWFIk98wKQFnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51010C433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166909925432.12855.4391347735164567548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2002c1661ff645fe9a5c863265193cb0a3b5710fd09cd7df5773d70f5f5d2f61
Date: Tue, 22 Nov 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669099254
