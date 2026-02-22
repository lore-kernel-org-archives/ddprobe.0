Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4512248B4
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771798494; cv=none; b=i7OJt6OjlpIpyEcHu513ZaIWI6suPjOwkW0DEwm15Cf1qYnwAn6CQffMp1iM+tGkCaUfRuJ1+I//pauSHFa2j9nJvD3/tN5Q782Ai0Rt0knDBxRWbcN5uw5xPNSNLrFFVRoExp4/CkWsMwqWb7LcRYcN/i7mZ6qhbkGfsHJbHTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771798494; c=relaxed/simple;
	bh=ib43FveAz/Y9rDuaU0pJsnc5XiaVjQiJQJl4HZOEGQQ=;
	h=To:Subject:From:Message-Id:Date; b=goDD4y1qfgp9twFUUdHrkYf5yj++GDTIBQQt4PJS9hUAbEZKrMAgjn95BmFXPRO7k2hv/vmjpa1OHDWWlkyjdwLGiQywhb5l+M7UEptv1MqFCt9lCMGUJ3DPNL0+EdcQYXCnwEH1EEttuVA6eiFaa+qair0JVfQIQwWGMTkwwbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbJbBqiZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbJbBqiZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC63CC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771798493;
	bh=ib43FveAz/Y9rDuaU0pJsnc5XiaVjQiJQJl4HZOEGQQ=;
	h=To:Subject:From:Date:From;
	b=YbJbBqiZYev38CoGcvbUMzcckarU+0TKr6WrAOECYYh0yStNdJybBUj9/uiWePBHU
	 zee+ZAzVQbZz4X50ye8+C/UkUuX+PHjVkhGpd1tO79QsE+t8yvSFoe6c8Ghg2kJgut
	 uQN4rd04xF0KINMsmfQmGohnbXziF4CHWuOA7h+0D5OicKaNwPDv6hdcUKaK89wKUL
	 i8Biuhd5bBIJnO2KS8LcdV4JIqMtdY9FVTKLUF/WN/5//l6D1BmJH/AtcC8y+mnrMG
	 ViLZ01u8Bz8BmaukY7BnBpPTXrj38aLyAf6ypovK0EuS8T0BXW0d2sN5DTwxgLb9kH
	 yFngYa505Bysg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94382C636C1
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177179849358.11193.8966111615252785289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bafa1cbf0b22bb2e460fd43b3eb001c314fe5443ad001a674fc493596aaa98a
Date: Sun, 22 Feb 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771798493
