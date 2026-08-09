Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7392B9BA
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786248634; cv=none; b=AdF6ciOZF11XhnSUcpx2t3liFleDHdzgI7h2qfcdpscSeEwtrWk3Vx4xRiMVQOuTUENSQxhJMnoObfhx9/3I0wgWF8dcERhZo93Swg13+qhViPd4rAnUn/dDClin1wy5ZnMcRBFfTdPeoNG+5ixx1USq971ue8fHC/R5rroXFwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786248634; c=relaxed/simple;
	bh=F8rSr4Rm6OAmxA7b0Fz8Zy3f69y7nVpgRR5cGbvz5hs=;
	h=To:Subject:From:Message-Id:Date; b=hzviikUgiLm8ly4zCUD1AVE41EyprBSzoSc+2Q/Z9vG5Md0FtyHs/dBEgCxDK0HBUkBhIoLYmZZB9AvAvzOEQKhTAIZTO+cmrMoLHc7ZBtKKVBxDLj1MHcKlJ5TyiC7sTL2emglSy52+exeJMgg5dlMe0EpJI5j4F+21SrU7368=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWvQq18E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWvQq18E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F8CC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786248633;
	bh=F8rSr4Rm6OAmxA7b0Fz8Zy3f69y7nVpgRR5cGbvz5hs=;
	h=To:Subject:From:Date:From;
	b=cWvQq18EcxUsg/kCdBlX4Sq/GjxVytA92zUHe5BmpTWQMUo0DRbPMLdc4fd1bClCB
	 xyVyOTiAINaA4+OEW8OccrZVr5Ga3QIxixvNK1W44cLld45uWsfAQDFvu1LKBhrWo0
	 fiaeb1Cz8Wm73LEkwD0R4BhN2A2ycHsiWc4sNROBdX8rdsxyeRMUNJlK6EUm0bza/B
	 jxeyQIb0M3g9CDETnG3j7x0hXDNPCdEA3ak8FWMGOzcEZbgPp2q3Jta14mnhMAs/qG
	 Qc6wuGify9T3uH7VmixV3YAqq13wXijgt6o1Rkr7L0bJ2uqO8BauRHIetQZd530dcE
	 fdeqztJuOz3HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC86C5AD2C
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178624863368.13943.8940030381534673188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85eb5eafd54a80bfc8c58ef19a6f0eac074cb6e99512fce10a62039fee0bbce
Date: Sun, 09 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786248633
