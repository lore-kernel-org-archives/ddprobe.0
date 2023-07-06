Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED66515BA
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 07:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5945C433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 07:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688630228;
	bh=O4gOwW8XFh4Oj0tqICUeZyP0aydehqYxMIuUhJcIbgQ=;
	h=To:Subject:From:Date:From;
	b=DooB5UiC7XXh+ZmZ2wnT3392DnWJxRyobpM9WEKWLlffUOJCxJ+AjEm/gPZFgLu/z
	 sDKrCSWd+iuKYMV2Hne54Q9GD3rSo7dcmM9/LJGuBnO1QYBKXlwl/ZTipQzhNi+ID5
	 FTZLzPUQeQkCNKjRhC9iYfWLrRvaLUKWTLL8PQUouvjjliCKJwvEDiOBR+8JksvA2z
	 wEbIjVl8WHjgtfKNmCn9UVCHxedzwh0fmhUvnNcdPWak+FsbEMSer2vANbQJPGRHUG
	 AH81jkFIAQP8bLI9yB7ILEn+h63AuPyjliFz8Lq6RALWN4sQYN0vSq69mG4veOnUBL
	 JA18pJlODd+bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC374EB64DD
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 07:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168863022869.10137.116547546711711602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6fea43e640db5e36493c2d4a2e2969c4bd0183fabd3341bf62d0ce9e7e13860
Date: Thu, 06 Jul 2023 07:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688630228
