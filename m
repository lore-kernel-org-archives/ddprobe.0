Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ECE22F44
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 09:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D576FC433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 09:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688810228;
	bh=KtZPyoSjfWiHimby0PNIXElBbyqzdr7PSdlLgr0Xclg=;
	h=To:Subject:From:Date:From;
	b=i0oyzxzBJlY99sSMp7eP+Qy13gCqSaLnTtfKvnVXun2LxzXsp7vz0QSbAsFllyM1Y
	 3ubMVgMpn3+mSGx4xMJsDFaUxNdLw4U9RBzrUPMlds1MeCNjKUhXv6llBQiiJRN/hv
	 EGjd8hCas71L6cByzy12HXfYuUF12mD6dMLd2TqRK49y0Wg3Iq0fkFtc7sx0oiBKHp
	 8hixWyyUeGNpXLXicY+THYYHo8rhB97L8y4j13WP/ggGuzfkSeXLep7wn5KMhdzSx/
	 oeUOFTx6I0Cz6ZbFqxc1QVHexqXGpkl4gCbwO7hxZPN3LqPSwom24E8N8WP6D7uLWL
	 3dxhnH7MSuIng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E6FEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 09:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168881022870.10544.4697432332258871060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450c4b20accf5f7851a5cfe9c59b6b8dcd4694c9b966438601fbb2269e7d1cef
Date: Sat, 08 Jul 2023 09:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688810228
