Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FBE51366
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 04:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720670843; cv=none; b=rAqIBtDT/uScBPWGxY2eBV1Nlw7nkLcCCxNIwxyDNro1AN/vLGsnXoJCe/QG4Mbs7wzspOxB3c8I9tgKS/DHNZLkD3CigdnMS9AaEi18Uy46du8cVQdQHntgHkqRLN7MABbJW+kXw0qlyDD6OEw1hWl5SzzqBcDXe9Qo7YPKLTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720670843; c=relaxed/simple;
	bh=Q1qxCBN7/EqNZBJyRRCzAXGQTzNXhWskIp7+L7BkLsU=;
	h=To:Subject:From:Message-Id:Date; b=KjbxgDBcLJuFDccVXm+Mxy+eqExdlllpVDDw6YPoJ2+TakABgklqrMIYkvkLeC9FWYD762q9dtUJaY3Ps2t3Z3fsTMil+06v3LoLPy2qGrlG2JtWbBd8U3olIkLNDYYBs9lHTxfDBOqX07GAPHB5a4yYN3Wn62LunpE2X7X0V1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfJeeq4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfJeeq4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6AABC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 04:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720670842;
	bh=Q1qxCBN7/EqNZBJyRRCzAXGQTzNXhWskIp7+L7BkLsU=;
	h=To:Subject:From:Date:From;
	b=jfJeeq4JKtHpgsuZFpLs2UZJiabiR2vhQf/W13jvw0slvPacHcNMEImP/nCdX7Eel
	 ihXFvXhBwBQPzkgQcl7zkjvlGzUhaU66upjhPDyVOBkFB2dy5nOtel0AMn/Z1gQJnL
	 7bY6fsk0qHsadcsBE6X4jifmOf2tyeOM6HWHdKfj41gnMtsXN/pNX6fjimE2upLtou
	 LW/+gTshPFrlCCy/Rg3IqWahxS10aGkYZKlHiueyiVEBarB1EDZlGUCr1c1NxFKVrG
	 up8/AVLcJG4MpvmCBb5qiOb3HKiHvMCIRaepeEhjKXutfso1S1pbh+6KXDS3F/BDGd
	 bWdacazDQnY0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C021EC3271E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 04:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172067084277.2714.13770213857539734206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 835c62e946595208c716c137eac020a58042c0ab1f89a37dd74a7f467f41ff25
Date: Thu, 11 Jul 2024 04:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720670842
