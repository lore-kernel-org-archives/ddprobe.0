Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3256D1EA84
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749562194; cv=none; b=ON4MAiNjl/o5zU9ncsnxILZiDWrYl5delrqh8I4BLikFIA8VzVulCzp1ykREUh+l2oMCcFGKpGQdsSiQ5sUNDFw+ufx4xU+EAiS5JypQ617noI7w1JKukk2GnQBg0s+EHTXMFRod/II5utjT+G4zQtBERZW0fHGGQ1DUBZjhjvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749562194; c=relaxed/simple;
	bh=vTizJqYTF6AqxOLkeZx+PK06Kx0mEXHSAIzKDGY8Jh4=;
	h=To:Subject:From:Message-Id:Date; b=dbqspksXlJxvl/+rILn71fLAzeUjg3JbdUfxAeKgalTAqcEf8glzbeZsmMNbpeub1wwSag18TJYWwNhixDLgcK0mBJ1xWXu526bEMVzZFfJanMB+xF8oZpDpTbavBqQ9DQImHvFQ4vygPBIpD6wrOooJEkBHQrjk1Trv68VGcXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2RlyQnR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2RlyQnR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A117AC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749562193;
	bh=vTizJqYTF6AqxOLkeZx+PK06Kx0mEXHSAIzKDGY8Jh4=;
	h=To:Subject:From:Date:From;
	b=m2RlyQnRGjmiu0t8WfPaMZP2mqplBpB8GcHb3QQM+2d1mjD9u7eMX/UQdNGU/NZlO
	 aQztYH1c250Zn3YK/147E8ZXpcj4swjul2ARzGh5XfXMJW5aMhu69B/R8+WGylhRsL
	 sqJTcsZehUDBFsqXtP9XseEJNqPMNjyysro6vyZKhZpSOq3hZceMESJ8GW2w7JvqhC
	 BuZwi4rXPbyZP+KJAs6o/rCIT+UYbm+rgdBDKQ+XPdVGc8ZbZLFAWnTJbxJXDLnUJ+
	 5m5Tp8YbMdvnbezaa+8W/zbLbrVL1FOxeJg9GUPnf28BharPDVmpALtsbm4NEiFoub
	 ntQAjCqy+Ov7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F534C5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174956219357.7849.18067503389569725553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0917fd179beb02cb48eb8830b0541ceb9eec61e7e308816daf678d7e06351511
Date: Tue, 10 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749562193
