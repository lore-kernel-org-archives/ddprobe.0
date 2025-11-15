Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2051F21CC68
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 21:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763242854; cv=none; b=TNPnKQElnyOZjhSWuOmXmr+3di9suX14FjQAzWIus1KnzG36IAK8J5d6No5udRU77RH5yLVEiHr1n/YWs18ZLvxDgBW0a6Zmf8TbWum2Hu4tc5pAKje33zS+3Z6cbyCvAqOGXbN+wIeD9V5lQ1Jek99UDuQZwsdLn27y7gzhK/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763242854; c=relaxed/simple;
	bh=NaL9NOPpP5p7bBNYaMju4lCXqHS8IUKH0HGvztsqWds=;
	h=To:Subject:From:Message-Id:Date; b=P5E73Zy2+/L4v9A7844sJeyn3v77duBI+sSukIMLblVwVJDjxYn2pC5J+ivQ/UGGe26HNDYIBg3Kg/bMHjrMPwP0Fi+S6zKCjGrDJYjQQxNMUW7fjHjyt1I2G6QTz84CIRnb0Bo24EMxkALeTCPzDi/DmOXyDhGifp5wDJfzq/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnOoXwxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnOoXwxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A843BC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763242853;
	bh=NaL9NOPpP5p7bBNYaMju4lCXqHS8IUKH0HGvztsqWds=;
	h=To:Subject:From:Date:From;
	b=BnOoXwxlZecMzvR2CM28+81/ULJFsMFnVbherdixx9R8U0FQA6/yaHwptkUV6DQvM
	 PmxmAJtmFdyy4GDR9S02Rp1NrNoGaYhCSs4yFReAqU72AgtQdYB+sL+b2caLBjs1C6
	 qiDSwvV62ihsw+kaxTsWoSsymnxGcABXBbJTb7Q31V/lpYjMPj+XMqftBO0f0jczkf
	 JMRxFW3yqZBL/V4Njv3gajgCf4yvho7aM9ZDTKR09ExnuPRmtsmk2JahhebL12/BzM
	 aMtfkyVOlTmbicOn6r4j1Ax991cTodU1aOPBufdVlYH9enKwZB6JDaHJ1qBTwniVrp
	 1Vtt5uhhS/xZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A42DCEBF87
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 21:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176324285359.21039.11676300964076441887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b81dbdb8667d4d528220df04543307c39dc2e057d96b4363e70ee241a6be96a9
Date: Sat, 15 Nov 2025 21:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763242853
