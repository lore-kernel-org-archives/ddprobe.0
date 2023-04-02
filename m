Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486003C02
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 13:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB4FFC433D2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 13:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680442505;
	bh=RtUmmbc8HLq4E9aLbEoImNTmME0D84jlz/JtSD+uyfQ=;
	h=To:Subject:From:Date:From;
	b=tuus69DPwHQ+iF3dfsjiDUnvdBUxcQ2ZWobOTZPT1wBEfb0/DXiaWvROrcIs//z8t
	 i3YqZ7pcy/Yq4i1NhjAyfd1L5iwvghKQQlD7KhoNbi2JUV+AmFOknlymcvgR8bkOxw
	 Cj6mbzcuNxwvKGInsPdRsABBdPEO8MOWEQ8ZXvTndD4PZofH7LOcvgB/uUI5lt0gZI
	 yBvKRLUrmDEJ2oUzwL6yWp1OlTznrJvTrwmaUrGvaFWBdNy050Gz1MMiSdM0QMUbh6
	 /hGoFtH2dmYXeSyoTT2SSGR4bLmwv19yIVWQxZrXysrhdKcIL9ErOWhcXFSgM/k4p/
	 xWOE1NHlHZUmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC16BC7619A
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 13:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168044250576.1809.15430621665665516194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf71e00f837ab04da315489dd742d2ca8f42abcdd9c9edd272ee288d5b208668
Date: Sun, 02 Apr 2023 13:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680442505
