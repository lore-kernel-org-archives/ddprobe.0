Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34CA23745
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706449097; cv=none; b=sTz6Idm+yTnkz+gHlbap9/m3Ez9j3RCiSrRM4Uo/ZilJheC9myvOxdKNXg/UmjNt9XpCgBSoiHMU9qx66bz3Hq7X8Lpr3YR93Py0dZoJUHkEnWMOrxYMYvBi0fY8gEepApSvEXRK7qUuXHm3d1E2GGFq/Bc/PuILtdhKTOhIlvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706449097; c=relaxed/simple;
	bh=4aiaR61zJiP0Ee7YRq9QqE10qdlReATD3tjx5e6Sawg=;
	h=To:Subject:From:Message-Id:Date; b=LUwrBC3BRaIjJrxEBIE84jIBKTf50KSvnw/LvCnGcq1psCT9v3XFFxOKa5IahNs9qIRQqz+itotAOH+TzcjAQW/L3Qa5YcdihDTb+YeiC/NnrIEYGZEs+Inz40gt05FwAAunreHL9e+HP26dKBnJwuXYWBbYWMaGdVXpVgVJqis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcBIZHMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcBIZHMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 818C4C433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706449096;
	bh=4aiaR61zJiP0Ee7YRq9QqE10qdlReATD3tjx5e6Sawg=;
	h=To:Subject:From:Date:From;
	b=LcBIZHMiQmFYkdoGgeGHj4xLloAX+dgnn/NBVWyNKyOTGefdV/bZU8+8rTO+5T6rb
	 9H9KvzLsOzHkAuMPwkYxQHqd15OVGTVQ6ItEqMUXCGyQkVpulSpDzsf35ZvY0qbKXI
	 BwZJMxYLOKhyz4Vhx/BrdFFzBxoJrafjc7COQLBRcARbJhZcOdshABcCdqOjwnYosG
	 wz6NFCNo92JjKr+MKfPi5pCtOra7Q+fhQH+KozhgyM69CMmDAbRJ4KP3QtCbJYt3S4
	 T01S/fl12CjTRJHzriF7nHrK+uTh8N7fAwIEIbD4RV8oPEPoXsltIqS1n0nOHj7BXH
	 yuKIR11LnIWzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 663E4C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170644909639.5814.4953629062919033288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 879312dd7aa55f71f7df80a650dbb913d398957650bd14e79a1279aa3cbbc76a
Date: Sun, 28 Jan 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706449096
