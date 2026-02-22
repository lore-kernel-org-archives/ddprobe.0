Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220823EBF3E
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771801494; cv=none; b=qKlPt2rFrDvWBVsGJjzC+6mIVTXvQKDjfnVwjEe3zzg19btDWOgyBBADB/Tlt+eoWiplpmi1pG6iMyTmjaEEBszqtJ6vi/tPU6QY6+D9NMi/NYAiuomrhEOrXGf43Le0dYJVB+oykF2R28apilfP7UTd/afx0g4Ei7/87iCWb/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771801494; c=relaxed/simple;
	bh=fuYqhJKel0F+ub3GbgnQ3lPyxX4GOi24/Yzmr7oEat4=;
	h=To:Subject:From:Message-Id:Date; b=AFgdY8RPCBsEUdNaf2x1cd4tjQvALOSSPqMvCDF8l/IORq7O2UI+P8MpWWnDeVfFpYimKuOxrOZNNAFjPd0pJqNv5rKBg+IGus0TBFCSULHuRRGG/mWU1t7LJ3/NqyBxkpD1Zm7s1wx6dHwhmCdOj6nOkhHfxvpx8GdvtMzsf1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPutXIFe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPutXIFe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85FDC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771801493;
	bh=fuYqhJKel0F+ub3GbgnQ3lPyxX4GOi24/Yzmr7oEat4=;
	h=To:Subject:From:Date:From;
	b=sPutXIFeWQvGht1SUL8l7C/wiBkmo2AjDBoqemb8veRc2GHriT+IuvYsYbhj9hja7
	 8E7DtpojoIj8OkJgwhYiZUSNnuzYR2RrhNMNlXiCRn7GZhDo1Cxek1FZ6EhQyTiA1i
	 GxA9MG2mcWo9k2RPa+R0/faq4No4aRJytwlwDESS0Iql/S/0WMbHxsD6sMlkugmkYn
	 kv8tOLlhbNfhXw51TcABzLIiVIFURQkttBvsHqqVlWOpioZB3WJ6AhearfTWbPiKNh
	 H/OuFAS/Jbw6WfzBDuAc7OrXQqoybUuOJYtmz/ugDITHaM5zF3qZiGZTBHab8OosZ5
	 cku3i4XYoE9wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967AEE68179
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177180149359.9447.5227420605214589134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9e3f19ad5be05c60826b025acacced8cadeb89dcdb4994690c552bc21bd114
Date: Sun, 22 Feb 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771801493
