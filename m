Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE207C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 20:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9854C433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 20:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674504185;
	bh=95VEfh0uFHvD4vT4f0kh9MCV4Tvw2Tup9dCLRyc4cJU=;
	h=To:Subject:From:Date:From;
	b=bDR1wNY2S1IaghdyRmdh46QKtli/oSS/DsIXQZ/MJCbWgzHlh6y84YG6SwnhKOX3n
	 6ww/0Tu8FjJ6IxYLMNGhBRjzNx0dNqeHJRDrk7rN6szWfjoHHylwpTSh6mZlt2cg6S
	 x/gVT1JxNML9lxiUDUeclZQvj6BD0LUJ3Dsx3IJtCv4URgE6Nq+hUEYil2x5H8LPVw
	 eCNiAWN5vWY40d6zB86g9hOGjj5p/P4BZC3Vrv5roU2om7Ao+0UmutTj+pO1su4NDh
	 OAEZ1gxmW+HVxSb2VnwBNBWnqjDmIwB22MuaDyxhtNcfD/Z8JbEcPKuoTOEWEHX9MH
	 5DF91LL4mJbBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D074CC25B50
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 20:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167450418584.19443.1987133706393637857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69c45105f7e535338676afcc1ae8d3d5732a4fad6dc828767ec8d1492854423a
Date: Mon, 23 Jan 2023 20:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674504185
