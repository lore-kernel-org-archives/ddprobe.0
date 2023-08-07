Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59392383
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 06:33:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2329C433C8
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 06:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691389989;
	bh=qSegA4u1LJVa0g7eFZHIlDCv+AXeq6dWzAYOmONM7Sg=;
	h=To:Subject:From:Date:From;
	b=XMW9GcEAM9n18iJdXdbxtBIWjpsmsX3IJ5lKX6hUVF85Qi90XYwsZKiu0osgusVrh
	 9VMok/rzPHkjOkDqYx9fzLEe9Rwx1CPWNGPCjrFcjsjIuzu+2z6C9xrCq1yuenpTKi
	 Po1GT/bk09navuLH1cXzr5zxlWD4kbwGytxn58LEeqg58ECU5qvDmovM/ngKyCdfXh
	 PGx5/iOWz0YJT1Z+2QBdlpeFtwUc7ZEk5vAueNOOx6f7sbuEmha/cZKgHyOwOl8BO+
	 l5OjIv/yz4TyGFolWTLNM+PPwL0ryraL5sCZEJh+cmNJhO/nY5zkuGAzoNMyq+ii7s
	 yaGsHvBiHz0mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BA6EB64DD
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 06:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169138998871.26973.15188816643327484807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98e7a3b3e05090b9e630d8015a9a66be36e6a4c028e1ba1fafeddeb479c4a65
Date: Mon, 07 Aug 2023 06:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691389988
