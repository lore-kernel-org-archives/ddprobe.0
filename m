Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5A692ECE86
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776448654; cv=none; b=PlSJrncEpAxPnj82xDDsvgntgHASVLJ2kmaC7TiIIL1+GxWl6nYWZEPXTyaNbTSN5PFO77NRd7E7/DG5oOsV3R5ViVOsFyFBhXuooFZqxb3BIMP2gr/Nc8y+iV5AySW2Sa6u50JsgWY1jHxSsPUUw2Y5XujYVw/I2z3FPahHAJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776448654; c=relaxed/simple;
	bh=b7DIl6xuec9oXpllObgNn6BWq/SLR5QmuFYWAfvy1oM=;
	h=To:Subject:From:Message-Id:Date; b=A7nXT6eaAHQllCMpfF2wCoCfiV3lJW6txBc8r7XZLQtgnjTi18PSX432tVAeEWi4+bagL4iCUsC5gTQ4qSOvXOWrxF3q5EtMQcLbDPnq/MzzFha3XpBR9jW3/bBKGVAJqVMXwqBVhpy1sIzGasqgAy18ykeqsq8kEE/T+dHxBiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPdWTbbP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPdWTbbP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD78C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776448653;
	bh=b7DIl6xuec9oXpllObgNn6BWq/SLR5QmuFYWAfvy1oM=;
	h=To:Subject:From:Date:From;
	b=sPdWTbbP4HwfG+720jgsKGnQvH4UEBfrC+v+GaUU5NXmK/nxNP90g/5cjv0FqgFwt
	 v6pYMWNzh9Dge4tV+jpSZ9xd4xq+34iQpQUryK3tSGIalmwcd0FvwUt/kWaOes7LjZ
	 HOLSkUOMkNkz+w4+EgnC8GW5iAdCDR7Zx00Sc2NcEV1PBJdY9gn/CPgg7yE0qgUDW9
	 M6d8QDcJmCRoZS6ZTVQYTUsQQGDfB0O66h7qsX4oUNWKtOzizRMjP6PaiWoMTClj5R
	 ahm9Nzsb5bNlzCT1KvuyyN6q17Eplh4Hu2AuLmt5x4uaNPsBIBbw58gpKHyBZ+FQkk
	 2fn+/1IDFXgaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDEDF8DFFF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177644865369.1134.16465266501840534184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 168e57748b1565a8b6d6503c2aee1b1f9c7ea7087084e1e3d6a3b314baed3793
Date: Fri, 17 Apr 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776448653
