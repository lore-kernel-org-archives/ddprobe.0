Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCD1A57
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 22:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE382C433C8
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 22:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695594908;
	bh=L7QTD0mrpndwVYqMR99Yf//6ZWgWp5rWz+L76Y1HSJU=;
	h=To:Subject:From:Date:From;
	b=nLvC267MjgfFW2AqHjeBhece8VAyEwsVGtuDjXopkFIb283is7F9RY84ytVobpyf0
	 GROgiTz5bt9W53iqKESJYt66Q8Jt630JAO5SbBSSOjqH2QpXPFjVorVKd+qEv5jFtj
	 j7MVFNUrA9LcCzdIl1dI958DSwoVhjLyVTYMkTR30FXbCo6m5OaX0r1Ftz/VUhVmS5
	 cHXTpJlpEVuN63r4RC4A7/TV5zlu4cCIbq+kipoCvzaYZ4ZE0vb5VEC0VrZGYW36e8
	 w44pB5YaZZwzuiarRt5JQpD2DYGrgxdPqgP58EqRPsEaBJGJYKxGrm8of4qVS+y2fm
	 NUtnpECp7bjZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF525CE7A8A
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 22:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169559490867.8572.8893933122867943383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e63c538d67c803b066ae12ac18531947509d9cc0913da28ae6f337217db4f50
Date: Sun, 24 Sep 2023 22:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695594908
