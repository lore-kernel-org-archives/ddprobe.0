Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CDC331215
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772450094; cv=none; b=M+1kv3H46Sl/ITCOm2BO6Mn1kxluxH/A4yp3QQ3U5BIycyA2ERptpfQtYoq3OD9xqxtqNpEEqieTVpP78UJIHJaE/EyQTaZRClLANeaI3fW5Drj9dWROe/QNyCUM7ZeRk+vVANkSQ6F0Pweyr/EhL+W+lFoILPXgWNLkDv5m56w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772450094; c=relaxed/simple;
	bh=2/2dUH2O9itqTxHOF4Kp/vsrOZkRHGAtF/XYrXwrw7M=;
	h=To:Subject:From:Message-Id:Date; b=uJo5/QRrB5M7/EeSxKQH5BPd1M90Ryzng67yQvwGiAXdQaSDBDirLnoBWYY/bfujceSaaVCOsKoZBt3bYVTzFIzIlK0uRVwhItg05VhRf8BRP2S7IEBoyhz/HC2V9++rrN6Nm1sb0JLH82QOzdr8vbNnbsqDCVlWIfmuewpjw/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiWtBcCr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiWtBcCr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5527C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772450093;
	bh=2/2dUH2O9itqTxHOF4Kp/vsrOZkRHGAtF/XYrXwrw7M=;
	h=To:Subject:From:Date:From;
	b=OiWtBcCrxQ3dps8+7G7mt7pd4Fgz+pV9obI6AJ0qBUPemHqU13vYyc3DvYi+Gj1ZZ
	 eLQNH9b88FwzfJ/QWblguBXFjMaDF0jPh9iDKOdgs/SLcpS5mQyN6UUe72GeZubwiA
	 Mf0Y84fpAJtjIYETAwLYysUGLPWTbrPek5YWs7THj8Ln2+FPfmjrbVY69hb8MdJQE3
	 fgJMfUT6DcL3tXfIdnUmiXax94JWEt5EI3sQ5Fm5lQRs1dnC+Oh32JIJVlL5VfOi1r
	 Geh6DCN/g25UhNHXSdwRHc3TewSo75yTYnoCgC07itiy39zGzEr8uuV3Jloa/pWcvf
	 ZEO3kEbN6V/zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB2AE9B369
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177245009363.12735.15127494260493929838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac0d9bf1d07ad12289f2c92957eb18be30b36df4aa732a6ffee45338f316ae3a
Date: Mon, 02 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772450093
