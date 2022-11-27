Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B43796ABD
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 20:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 724E9C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 20:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669581054;
	bh=YVMuYqYKXXMvGeRhmQROit8/ADfHttiunYOJs6fYdSs=;
	h=To:Subject:From:Date:From;
	b=NKoxjxKc3MIxVZiS0YHskveM0UsCgI26/kKUTgb01GNi8yQQtUFvlY0wWwSciazjS
	 HyfV+GChU3D/iUp2yCTFR16bu2wiSKtRdfhQqtpYb/XhVmCiAagjlK+DiMS9TbHvxL
	 lj8tAI3jULAyUzQ758UPNwsEGeaf/cEsYqv0Mbbt2uATRwkKFsgylSnOB/fqQpVuQc
	 by4As+CmMdQa0o77I6AhRcgR08ligPVVhWYcNKhGfi6XsCozJPVdxRzwJT638N5YfS
	 +bb2bKTNDNyVFyukgXPEphHDQY4InASeGiBeDrHgOuEX12vpEKSKWHfB+Ej1M45iTr
	 XgQQ4KdyWTXDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B4EC46467
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 20:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166958105433.1800.17685760948519080979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef01a004d86f9b9815c9593a5c5eb6e7a03ef2f469706dd25faca1dd7079ca36
Date: Sun, 27 Nov 2022 20:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669581054
