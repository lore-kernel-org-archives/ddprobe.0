Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E355F1E5702
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 11:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778413234; cv=none; b=bcZbWvPhLIuiXPVmPP7R5ANG40B+frQkeZBsphkAEgP9b2KWrkmhjysOvZA6KaG4Cip4DycpfpDg5JfwyLgJFHRf0ddJxwzSUwW283bnUu/r1EI45z3IVvuTn4tTnVNtk7zFX4YYxl8Ej6oZVZfsDidc9hTUgWtyTam4O0kfYWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778413234; c=relaxed/simple;
	bh=MpPZm8FyKogalNT7y0bArW3xFGCHQODj7K4MBslJs9c=;
	h=To:Subject:From:Message-Id:Date; b=dSnmojNPuVuS4VPrwIU99rd5aIzIhLJNlsnmV4VIdprqBTyXQ7BsUz4BU4F7h5J90hWe8qBxaPYFXwG4MgkRp/q9n9ek1/I45GvwVZpAIGFa9EwfZrpjDAnGdVSvtCNMveQUMBoJ4Lb0k1pWNx4etfnOCwjXMSOsOy5+q8abhr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jk9z6a7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jk9z6a7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC9B6C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778413233;
	bh=MpPZm8FyKogalNT7y0bArW3xFGCHQODj7K4MBslJs9c=;
	h=To:Subject:From:Date:From;
	b=jk9z6a7vTt5WS6bD6c8kSqMhvAv8qg6JefLwAmouCSgHbeb8e/tJr9r9vOnd0ZdB4
	 iDV92ElL/lfsG5+UOYsxW9k79Gu6W0decTJCa4xZw62zHHRaYSXYtKDGI827Pb3Azq
	 8fNiOWei9G+m1zq9wupmbY6TopJVp3XEaTzhJX8+1DAFhvLuZuuhkofMVPvDm6ThiY
	 eDxLX94DgCT/7joD7zFYH0T1oV1S1/TfAnM/jWHUoAKZ9KXSCcFxQ6DH/kfe9K4G7A
	 pu5R8FcARQbVkzzF7cTLHOugV+Di5wu9QLg1G5wuIGjad30rgokPImEbS9Oi9OwS/x
	 wETQjntaP62Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B4CCD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177841323368.16600.15428958347580291975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cfd5722777811aee01651249b3fd2404386d97fa0a144ec82c987607ae9837c
Date: Sun, 10 May 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778413233
