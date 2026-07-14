Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292E636F917
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 10:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784026714; cv=none; b=K7CS3JbZGUi1AHArNe15pCv95p/Qjyf1YKXEITJHfs6gZCsuxI6wnye+3+Oz5xsBVSF30+nB4xDYF0dY0diLuq5q9Ph/7ZgXxOXcLZYTVXhrd5OAkCA/0ylFBFR8rKGdBsSBvT1HcgWXmJkLmjqtTmQz2GuCjJ44O7T/JJA4/Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784026714; c=relaxed/simple;
	bh=+K+H1xlTZ5HO8fkJ1GgrzrSAMmyELLCdd4GYdD0uEtU=;
	h=To:Subject:From:Message-Id:Date; b=HCT/AiwopdIFWeNk+NAJZoR8E49cf3Lm930t++b68bc8w6vBK7JfkHcx375Kowsanzs62FrmTVlh28GQMbl95joB+h2D7a1S57yWxsJczBTAn9LvJKpJLrO05zJ1GxqHMbxESlqk1ZB+r72Fy65gM5LriprkqtbPuSRFjfYS1TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NG6sPPXQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NG6sPPXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC55BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784026713;
	bh=+K+H1xlTZ5HO8fkJ1GgrzrSAMmyELLCdd4GYdD0uEtU=;
	h=To:Subject:From:Date:From;
	b=NG6sPPXQq7ouqbg2DJpLbHAb9bx6OBAjTDhIjT3GgaU1Vl//oT8g/B//oW2XsG+8v
	 NHAkryXp2SqTbaLT27wenenQ441lxszuaklSuVTv7k23ZmK1dS+y1z7e8xJQztM2yP
	 up6jUbCX5kbNspJSFW4dA3Y64aQb5ZtwkNBH+MVK8OcQyV6G5GopWXot1ltD0flMPC
	 gnaeJRKRwAie1h3jaIcxeUj7gpTyucL4KxTE0rEQbcNC2FIiq1bzxM20L6LEc/oxq+
	 ktnjOWNXpTGVExRVng2ZfIVOPBuONnt49ZJ7C5Kr+3gQchpUkrCWIcjkfq1s9k6tjF
	 H3EVtk4HGH5Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB057C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178402671369.19444.4972336051405601467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 181d4def90012d9eb96451c166fe95a242c71ba4a269dba860f73896d7c613dd
Date: Tue, 14 Jul 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784026713
