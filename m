Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76086481647
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 07:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778571635; cv=none; b=PNS2KZFcnL0PjQ1eT8QowSBZOLW241plbw/6wPD4ODrkZbBCdAupKM5OLhWbhL+fbJOytqgQWxpnYbkI/6q5zT9VeEMGU6b087kY5eGBkdCN5Mx0EkFfcPGhhfG+C3cgpsTe9xCc6+jALnVeqKOk6zA1bulQoaI+Syh9NxSjt4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778571635; c=relaxed/simple;
	bh=nCUspT2FysB5C3oDCKlbDBR/eEjCmRIsu0FBrAu1dVA=;
	h=To:Subject:From:Message-Id:Date; b=vAtoE8m60oc35XNc15WTVrR+8K0SxSySL66FTci+gWrRNzSCeo7q737Trk4jum7XebKt07Zh5FsyWo/w7qgl3Lpq9skMtZcr6QmCeZJJ39qYW+ku1ZAP1zz+ZI8tMK4GcCi9OFtU796emCCDvi/MMfovjtDpAIMhrMr+0xFFeWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwU7UG9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwU7UG9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF88C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778571633;
	bh=nCUspT2FysB5C3oDCKlbDBR/eEjCmRIsu0FBrAu1dVA=;
	h=To:Subject:From:Date:From;
	b=OwU7UG9k1qKqtvssBNIuxukcsdLAL+R9Kxz1t3vgooM1XcrEDIMizds3dIXXR8Zs+
	 V7bQdJY4P+5k0H+41ZUXMllWV5DseNDj9RHMC6ghPPbPL2kOY2NnwCFch1waIJOBLE
	 6Y28EIl9eFfv3Gp23FKkAsZdIHgojASEiOAVdUgFaAGUHDiaeOo34jrpQdn91f9T9s
	 vXVHyIf9SWg21oqaw4Jk64pm4WISAlA5JZSvvppiuHjWT7JOQuxqfWxvvvF/fYtIwx
	 q5V5Ctr/cWrCyj2DARlmczfwCQY7x+i7pJxWA/+K0ctwEX3Oy1S33z34TRh5vSL+KU
	 yLvovrvrPtcAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD423CD4F26
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177857163369.7801.13794230613360596233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21640c211e1d7c9dc707d88d9b74556aa9ac14b0653f2acf07ece989128a6ce1
Date: Tue, 12 May 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778571633
