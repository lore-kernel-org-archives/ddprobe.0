Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2659C125A8
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="laEp3ZB/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 830EAC433C7
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698218296;
	bh=fm6doDuHzh/lBluFIfU+xyyBokiNcJzZX2ktEYGvUi0=;
	h=To:Subject:From:Date:From;
	b=laEp3ZB/3BMCI2Tuo8En8vtooFj3W7O28DueLg+LAlccGjjnX7uQg3ak2pj+enROT
	 IOIY0ajboWC4QyT9iP/OQbPCDbqnv8kWPWXamPYB14kTnwCaPHguiNeKNdlUxGYFUU
	 fcsrk29ra8k3oQ/ZNnF6Ao6a5Pcl7+WSJ5y00ZEJSwmB4ziNaKmMVRZLfAyTZfk4KB
	 50ZWcrWR2sz8JvHBMkQQepnO4uTMJLi//DhiqyoR7TCafjGRJd6fcfdmnKySkXqKsQ
	 do1hkDgENofc3dwaBt6odOldpsu3A9hgNc09d41f3eyq740icx91rR8J2tZXTRggGR
	 SicH0b7N1jCWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67220C0032E
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169821829641.28126.17236555410780833791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d40066de4c5ccb255da6aaa3214f8b8c2b3046106d50737f74d7a9c64c46fc5
Date: Wed, 25 Oct 2023 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698218296
