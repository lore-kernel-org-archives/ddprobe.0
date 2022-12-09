Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF640322B
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 13:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80B37C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 13:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670593287;
	bh=1DhPKOsLY0dpfOd1bTgVkvjtSN54bj/0TpVSHKvtt4E=;
	h=To:Subject:From:Date:From;
	b=Uozd1AWfz41AOqnaBmyzGAzMTu1XMe9wD9Sqi/AN8bigNgRERRcYeLpwyWJfWLBrX
	 AUI1BTOJY8vEE8Ahx2Asizwy9brYMC513hAFGEn3o/1nkrbE70d7uokofRiNXCD+pe
	 M1ku17n8T/EZBYuh/3gvzZ40gVuHm2tSLNrFEHZ0ZtX9Vo3iKvS0TBQZcJqOEm7Pnk
	 Ms/+S7vykwVAbVK6CjPcs4qTc6KNOExqaO8ScxuD4cTumf2Mapo0/JVynYve3aaVaX
	 bkFOEH68y6VXdUy9EXSwWoUkaZD3oVG0hqMW5qWB/6zPxcJXz6URKKduKqEMCmT5SF
	 1gODArLPbQ2pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A3CC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 13:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167059328739.22072.1136995383853680107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e3e97ce62f7bbc77b69bb8fe14c944a77fd44a7508a2ae1a40fafdcbf78ff7a
Date: Fri, 09 Dec 2022 13:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670593287
