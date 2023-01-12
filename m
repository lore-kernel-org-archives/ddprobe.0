Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E67428470
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89499C433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673548887;
	bh=irrjCTsjGUG/PeaFy6xj1MPQ5vqT+gT+dhBtNPEvpYU=;
	h=To:Subject:From:Date:From;
	b=YxkKrK3snGXhlLyA2ICfF9khNg52jOHoFwnj4fDGo3G0fcWA3uML9HcPZr9fzwEfm
	 c+s4iTTLxoes3w2IkCPlncXuP10HYWSOir4DuhAYMWAAyWz+/JWnoHiZu07RipZC4T
	 6GnAA4uP7vAo9Wy5F9wuSLEmeVKEMu09MDuByB+yfNpgeSlBPQCyITus1S8fJHOKxi
	 185RTqetA8LWENmdZtFc0PbcIzhcGWDDGHlHD6dGfZMRmldIS0DX2YCpjKUGNcKwTR
	 giu6CcVNC7Yh9H6G0UWxd1ul7d1hP30SZC+eH7W+fIJVfhFJFzwjsbZPHQemMsLY+q
	 9F5dcOH7NAc4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D97C54EBE
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167354888740.3259.3244928368554766249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b9d4b9d7bd2143e9e9168c66514a506789c01c223577d21f467b7831de46a83
Date: Thu, 12 Jan 2023 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673548887
