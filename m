Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB0C522D
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 23:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFDF6C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 23:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674862385;
	bh=S/utJJS0iOGn8/W7pdAnUwLx5Sje1B4s/RS4liPyt5A=;
	h=To:Subject:From:Date:From;
	b=KMSSoKLoiVAfocAU41ZrUFdsa07vpnXlHabVoQt5PpiUeUk/XXPEFpVUDYyukvxys
	 xisHKPkT14jraH91045bA1N8XXm051qqiuvbTKsWeXnCGoA9JGoSebBzjJX83bQyPj
	 b6T6sMolIrhtNklSlx6BHxHUZAae+wvyRbV1IBtX10DU2JOOhqQQ+5ihpR9aT/Uulo
	 HX55Dx/Zval5CiEEyGFF+ztru3x/mrjGU4XG+14+x+3RkSxSJrxCp6af+EcYiS+RTm
	 UKXlU5zVC8uQAyMsIOAMB9aOJ5qUVSCencYNygEyKUjNHsuSYhMe4uOq9KtlJJ3vcx
	 hhrXG/7oBh5AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C026BC38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 23:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167486238574.22715.11554605040657406095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b8307211198ff2ffb3cea0fc7d4ccea6eca6f3dd85be949c3f35d657aa8bd53
Date: Fri, 27 Jan 2023 23:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674862385
