Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E300517EE
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88097C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671776487;
	bh=kNypNshqDBasG2/eyxCkjLiHJG4YNCD9sSlYOS08WX8=;
	h=To:Subject:From:Date:From;
	b=Chr+TAdjdJZdyhgA65GFpnnlJ+e3huGJDLkWMkrRF47e1k8OzzHYjbGZenPu+3rBq
	 REsNGuzRZY/A2CU49QlKd1etskG6J+KxleaIzuZ4E6NKOJRXy4a2dtPUsFQHFP9y+a
	 ghpq8HCQexMqwgRq8g+0/MvXKqKAVPoas8peI8ghZ7oWEur0zHhA/kIBYJ+K5Fd0lj
	 /s1y1UTyVEq7f/Siz6hicTydxIkaUi7e0i8FUIurcbMiQgtwuNu8iW47U3EqMLv6E5
	 1Lrh9jJjoKYvKLkUWGyY+daGlrc68P5vpZJxhWARoplCpRQOMtcRmChmEpmWXAlpO4
	 kVIaIXKETPEcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 662F7C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167177648739.24303.13672176348769177734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cda4e714b70c35c12f1205ec11290cf814ef7481fa7637a61effa53d6076f33
Date: Fri, 23 Dec 2022 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671776487
