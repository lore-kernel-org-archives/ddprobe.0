Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2673626A1B9
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775926054; cv=none; b=d9J9CdkU9/Kx+1rkpwcam7I7WYRPHA+dW9l9cdkRA+NdiFV60oucCYuqwU1jsep3/bZ1357Wqay3FvqME/rHBt/abR0oSH/rNWTit53B5VnhsLSone0lsud9bgt9N9MEVCxonQIZry8cUYaOhaVE/LLDuOBRL7+rqF/PtEgfGOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775926054; c=relaxed/simple;
	bh=XumCzLESWN0uofuHvJC8MrAyfB61/xkrFzfMfgKNEEQ=;
	h=To:Subject:From:Message-Id:Date; b=RWYcoA4ggYw7OTRaRf3lQx0tR4xBVZ5c3W1hyOqqId+AIg8p0UQu38WNogyCQZqTJSONEe2ljZtNaJtXiGxsbwF3MFxoWuBwa0QY9MgQ72Dw2NdbfQuWxkMIrkWfYEv2rA0LZUOMYn8m3NQ2G2uZSdTWIG6iybuU1Peujex3oE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGTlmqWk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGTlmqWk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE53CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775926053;
	bh=XumCzLESWN0uofuHvJC8MrAyfB61/xkrFzfMfgKNEEQ=;
	h=To:Subject:From:Date:From;
	b=kGTlmqWk4YZgpFBdE2EdZMEbAdnGCKMXiUHCEVzQ/DQGA4jw9ZxyxKMcoWbUdcglS
	 W+Sspr8Ozboqwg0B3OkPW1xT/8W/RgDa6Bb9M/ojRp1TYM5ZgsoB6zyjtwD4XxPhWa
	 eKYee+Iwg28EPAZ5q9dmZqLRBSjhPQh2gABxMcF3Z3iwIc1qLUbCOxHC0KexAIS1l+
	 vuTYc6XYa3HePBZ47qweO6M1PqiTZE6yoox2K2p9CvLOCKQDksIP6kOTxIHex7YUzw
	 7IrQTRr1COYp+961GQSli8KXRusJi+q6Ex4zhEtWYfPn/La6Jr2tnDzLOt5woFkKhP
	 Nkg5WKx3zbR/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA632F3ED58
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177592605368.4909.16320397987913077369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e74caf312bc2b11720b754005af490782eb9e742bfe1aa3f95b7ff06ede230b
Date: Sat, 11 Apr 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775926053
