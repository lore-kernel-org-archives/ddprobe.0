Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C494274FF4
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752698994; cv=none; b=W1SEkjfaUcCJSrONqeosyc3XKh7xcT0gG64Y07luVnABQxR+qqPpO1UDNXWXsz0e8Ca5ooYZ92JDq83W9gyRowiWxIzfXnHlKMaTPPHnPeTUHP6+S2xpf5zpV/ElK1OXyOh6y7g5FYCOZJKu60E6RwoOcoJH9cxNhuE6FSpSfJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752698994; c=relaxed/simple;
	bh=NXUH5AkfMPUfAAd5Bo+KR33Eo4GGl3bw3V+VvoFwlNE=;
	h=To:Subject:From:Message-Id:Date; b=SbnSNiK2P4G02xIu2EDILE+uT3Ey5sscjkUL45jEB7bcGv4cGiksDBj+C5aeRwwm8dHw8TwdGEK5WWBiKwi3ZqefM9oE4PcR8n+0dm0kgrCWUSIhg4jt5OBbRLzDLdxcZtDOstrbV96wyZBdy4e/gihqohWaGuKI4PPh37voHhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMpb9wWk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMpb9wWk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCBDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752698993;
	bh=NXUH5AkfMPUfAAd5Bo+KR33Eo4GGl3bw3V+VvoFwlNE=;
	h=To:Subject:From:Date:From;
	b=iMpb9wWkT1cuA4xqiOv2F+yIZzC+LKvDucy2S8Bw/6311bbyisHeGAqcLY9v9qdhJ
	 gAsiKGGWBrh3vVCNFFf3KgZ7Ov+mFinvittaByBzKIj4/uDjjNcRiSf7tPx4E3RDuV
	 Kd/co8mXvyT4qEhkmh0L0ctZDtnZORd6N1EYL8ZAPzkhbfZ7aMlCCQFSKq07Cyb2qI
	 TwiFukAhmzGNWL9SWxoOJ4/UayKjYoxnovPlSzF+6xmZQYlMok3caAHCst7K/w1/Di
	 /b6P4DdxqgbQEG/wGOs40jaoSMICN1DqFuh/la4UQXOjUsr9Dgi+PL7Sy3I2IvYVEw
	 x928y7WVRQ5EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4C0C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175269899357.31825.7221152397956648322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192eff074898925a2f0a18b7822794d95fcfeed1f57bea794eb3b47485895f6d
Date: Wed, 16 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752698993
