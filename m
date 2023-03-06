Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1DB6FC5
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 19:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13BF9C433EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 19:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678129626;
	bh=NRVSpfI1Q2IlShwgDwL9PdA+IbqUzc5ewnyh8mJaWVQ=;
	h=To:Subject:From:Date:From;
	b=DMi26J41d5gbh9TWAQHwBSew9r+bJ2fjuP37zOw7I7TcLx03pNbB4Y1jPuq6PrlfK
	 uYUnKPfy8Kqv2SDzLdOvtwkLz3C71JSftfztOoO8PdA85R4VaKU270XosSrFqFVk+m
	 awRz5/AgPS5RPCXvWBJDsR1Dkx1dFOVEmG9eNY6CMxC3xyGdSaWzgczCuvlmBvKQIt
	 uKWuMlkFle3lGdCXZCFr9uoz59q1WzwlAY7D9+H2i9tIGHRhVXBW5nj6khuJedWG+g
	 BwFkh35OsNXxMYtNpRT42D3Ilik1BFlppIrojJtdSb8ZKhGYSWbSLLDQWrwW8x+PDn
	 xc295VnOzkvzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBD92C61DA4
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 19:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167812962588.11028.9847459300675201334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c83a1f07d901b17ecbabdaa41dc96c97babe987264e5156dbc329336df67bacb
Date: Mon, 06 Mar 2023 19:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678129625
