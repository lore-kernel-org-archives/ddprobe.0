Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE862701A7
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745650794; cv=none; b=leNokL2MXYi/SenRYJ7Zu+JkEpsifdcwuRJyWuuI9l+4x/k+NmUUeSYIgiVt0qLV0WqASfmhofGiAFtR1euy8k+Td7LvZ5G+VUsDQw846XhMGkHxJpWBta37kavyxdxTN4ZR5a2oV/XkBChTJIBDKBw7Agtm+k5b/7y93q0ATkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745650794; c=relaxed/simple;
	bh=HKVmjf35Qk8fKt6ya6plPpSlcSRlQMuwP+y+G3u0e7g=;
	h=To:Subject:From:Message-Id:Date; b=UxO/TC1erWMKZ3gv2JLZ3RFL7qdY1OU3VUj8LWr8b3BokZT9ne0gqyMDZgjNR2aMqLjC6oTIXAJE4NXBW4H4hlPJjuC/6MasuEXItarpmwOfG58HhcRomk4HmxNxO8LjU+19Oj/Het1GXmqVH8x1U1+uGS754FLNmN6sH9mZ7XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnQZNLV5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnQZNLV5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D28C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745650793;
	bh=HKVmjf35Qk8fKt6ya6plPpSlcSRlQMuwP+y+G3u0e7g=;
	h=To:Subject:From:Date:From;
	b=ZnQZNLV5FFZQDwcujcfv6vR7C7wT0qwr4QBPAX3Lb1MKVZ8cNTh4ghgQ068KN7a4f
	 BFwVAWbt47d/tcsWbxDkRnrYJDhN1Ws+8Oy4dBomXKaUv3/unqtryhy/uMX+vGhh8y
	 Yd4DSgTwt9bDJr2wTCFEAxWGcxedfF3yqeyOZ8TQza+3iwXB44mx+U8/ramKOkKrrW
	 NUBIdPODgzXiFWA/AAck7CU/eX6wNQ+wL9oX0jUrwEt+HmnzSOEbeLayWEZQ55Exoo
	 WymUPM3Tzj0oB6MqlHiWRGcsAlLDnRoLSW9V2A3qkzp7CkpzfdeKHnWwGlVwT+Dv1x
	 f6qZ/+8s8n5iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F96FC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174565079357.9162.4569336809882612013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11053d210149d7bfc60695299b428f199e139da4526b94b6135046ce7503168c
Date: Sat, 26 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745650793
