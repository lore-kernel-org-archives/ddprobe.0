Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439CC20F8
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 12:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57B6C433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 12:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679835125;
	bh=/BQ6PsLs9W6zK4YHriaRUxw+zVs/vQ79Wtr/5VWewUc=;
	h=To:Subject:From:Date:From;
	b=Jqanx2YFmKHyl0sDQ6ZKqUmKDhPkQdMhySJ2b2c4/bGFJW+LXNi0WxEkUdrJCV5c8
	 sDquvdOvGQ4JDW3QDtYaMlieWO1Jfexrm5u7TY4dhS6Xzo8TuKEwkhbukZaWstrgkk
	 6aKSYlDeoDeQ9nVs1qDmEOlxf6OSzbr5UKVexP4MtVD81/hjaovtX5OAWwIPf5MepY
	 0VIbNjlBf/djn1X3yBlam7pSG3gO6L3YyYlRkleb2/fvi1voGm0rm1+cxlQxD38GFP
	 izZ+uzYkMR7tHEavz5gvtWC9m3L4pBLPlngdCHQdvgxKhCorAlWVhMyQar/h1S5t3y
	 1odGTIsriKFtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B94ACC74A5B
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 12:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167983512575.27487.6399908902513580165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21dd912de306f74243170618f2089e51786ad5bcfeaf9982a25885c6e103c3ce
Date: Sun, 26 Mar 2023 12:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679835125
