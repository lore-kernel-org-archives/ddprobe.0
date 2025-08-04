Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D6A1547D2
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754335793; cv=none; b=FlaDkmI5xobsf8Vm2RVT5h2FgX1nMzhm6Vuh4J6NiISoY7UcbsV100GgHock0AtFD/qXohGqWzl78p1nepWRiLPTVcFr9hAEukvFrB3ZFtqJdQPn++4rs4zUnVKIxANJ2zRHEdfdn1lZzEVs8b1+WNWDXJANpZbefhDZn1JgkYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754335793; c=relaxed/simple;
	bh=HxmFpGBqjl0yrEaTaKJBNi7zxvZ6vbPULXvGpvGke5M=;
	h=To:Subject:From:Message-Id:Date; b=R3ehcKFYRdzMXWlqUb1jwNHqx+hIkiAeFWOnAc83lMbUY+P4ngaXnWU/E+hp0Iir6kQlyXhc7oytGwKSLmAVQIXvfFHoPE88PUTugGT+no1bWf5td1qX1pWVkb4jKOv3BfdWxyBCrt3THmUav4G1AYSwr1vMfeTfyFGyszgpq7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wsj501uT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wsj501uT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E793C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754335793;
	bh=HxmFpGBqjl0yrEaTaKJBNi7zxvZ6vbPULXvGpvGke5M=;
	h=To:Subject:From:Date:From;
	b=Wsj501uTo0H8nTXZkgUQ8OtUPJ3p8FIeCszNTh8L8T/ewixBX0iDrVZTS4OM5ee52
	 uGQLJy4gPDmcP2WinpnZslS/zhdqMV4+JyulypkdabFO5bGk5Yf8snYAeuBy/NJerI
	 lRPycFXLGfiwocqNL0q/Py2eoVrL8Ovg1TX21JfaBhU+LZQ8gS3HlIx0xeF1JuPArH
	 /AoAAdXFoW+vkzxug1d469QfuAjYYFeVWOihjnyL7mRoKHD+CQ3iu78J+TkpbddbQu
	 gnXe5dFZIa0sKqR8wrhUfWltYL4HMaMQOm7eBj5O8GT4AbbXQu5x8xEUFQV7/qDgCv
	 Uk5T45Vkw3KYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5CFC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175433579357.16977.15100259588534303227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ed1018d806a575cb002e4a81776b7592acfaf09281b2834a5d3f064b26414c6
Date: Mon, 04 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754335793
