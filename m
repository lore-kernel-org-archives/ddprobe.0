Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED2920338
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghojlVx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94DB0C433C7
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698772696;
	bh=uzt7/PDQHK9PQMWmg4E/HtsI8lSObJY5pVc4ZiJBL/8=;
	h=To:Subject:From:Date:From;
	b=ghojlVx8ABTBcSVVIMvDSvaaxWkG5sEjknVeXZzXTQE8Yjp6HfK1IeE3E5VBdyeBD
	 26Moa9TdS+8T+65/wLEiOiJdseFvhAq0hNkHiZ46ugLm0VgJUgZhuHadhCXBM/qxJH
	 0BlGGpI/8tydI1aah/Zqvx4tAhVrJ5kmxAgbNbvPx0EbC9FSHYUkWZbNZEl8yS7yj0
	 iaulYiuIuFTUd3PV5UbrPXrotGiPw9G6DIcoUKvI1axXCfojFsK1WoaVrjfXwh38/9
	 ROUzXxqY76LKd4dMUDvqr6LazpA86HRoFEGSG+w5MrrtgVe3wyhwfZJnq7SzQO6dTZ
	 ureE3xdRcRDsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77D0BC4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169877269646.21833.4269025580032994460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f6392d2d41fdce02fdf4058e044ed923de66bdfd140c9a95b352f3f2a8cdade
Date: Tue, 31 Oct 2023 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698772696
