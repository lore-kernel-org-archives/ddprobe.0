Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425223208
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747531794; cv=none; b=U5jAjt7Lb3fwKY0b2WUi36YAcYfDsuLGSmnsxF0+JugWNCtl7OWpdDuwRzuHjqTKNBHFnMaT7E4ZT0Zy7yhjUVo9ZLgA147/8VudZrOYVNQDLH2SNsJriu6YcmUNVSAamqZYhvGY+/Etl62Di7LsGYLRWX8gN0PRTjjBB7pVz2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747531794; c=relaxed/simple;
	bh=6HA/ctWRjoWkZSDiaBIpA3/3LW1AbFaJBv9YCPD1V70=;
	h=To:Subject:From:Message-Id:Date; b=CUUPbreafmGZZCIRP337gvxBmuEDkqTzZ5gAwEiVoAROpB82NcWag4HNTJQC0HwVOCFsYntcxYlLuiAEmO1zvCJhVBwPNji0GxSJHGg19eFyfZGFO2aOBIOgWUvxmiJVrUFMTBCxWXQ4BGn9GQ/SuGwi8SuPhvQS7JQCxeaV664=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOKtG5BN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOKtG5BN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BDDC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747531793;
	bh=6HA/ctWRjoWkZSDiaBIpA3/3LW1AbFaJBv9YCPD1V70=;
	h=To:Subject:From:Date:From;
	b=NOKtG5BN73h+5t7oJvuxNl7aq3wRKTjwVHryPjMo+BJXDSB+mQXHujtz8xKQdAPLW
	 YQUt3CeZdXMqW4rUYLCxHpdSlF5cJ7wezAH3Mga56nGrO0tm0TUVcpMX6Dmg4foyFC
	 2apRvtNql3sbCv9Va+Ug5MX0QyFHjCsMvSwFOePRz9qi3A8R0m0dznkJlnOcFEGAm/
	 IeSM0SSZk44opmqRl9wn0aaK1FCkKN2F8jOOgu+x+A6/AH3uK5rn9TBrGsQSBKpu6y
	 7FzBsT5so2c30xhjWjA/PhN+JhD6mvVxKK6cKavQs2SKJTvaWJniGk0N8O3QgIBnjq
	 i82wlUVG/6jaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D77C2D0CD
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174753179357.453.18400125626749273348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af08c29e7ca458fd8116d4f911760965ba6e284674e3985a279765ec6ac4bdd
Date: Sun, 18 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747531793
